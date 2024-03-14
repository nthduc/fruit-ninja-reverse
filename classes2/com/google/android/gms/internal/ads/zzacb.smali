.class public final Lcom/google/android/gms/internal/ads/zzacb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzczr:Landroid/view/MotionEvent;

.field private zzczs:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>()V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzczr:Landroid/view/MotionEvent;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzczs:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/view/MotionEvent;)V
    .registers 7

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzczr:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1c

    .line 7
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzczr:Landroid/view/MotionEvent;

    return-void

    .line 9
    :cond_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_36

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzczs:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_36

    .line 11
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzczs:Landroid/view/MotionEvent;

    :cond_36
    return-void
.end method

.method public final zzrv()Landroid/view/MotionEvent;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzczr:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public final zzrw()Landroid/view/MotionEvent;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzczs:Landroid/view/MotionEvent;

    return-object v0
.end method
