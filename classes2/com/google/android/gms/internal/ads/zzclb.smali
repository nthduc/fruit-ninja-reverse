.class public final Lcom/google/android/gms/internal/ads/zzclb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzts;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzesu:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfow:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzua$zza$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfuc:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfup:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzbbx;",
            ">;"
        }
    .end annotation
.end field

.field private final zzggd:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzbbx;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzua$zza$zza;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclb;->zzesu:Lcom/google/android/gms/internal/ads/zzeph;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclb;->zzfuc:Lcom/google/android/gms/internal/ads/zzeph;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzclb;->zzfup:Lcom/google/android/gms/internal/ads/zzeph;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzclb;->zzfow:Lcom/google/android/gms/internal/ads/zzeph;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzclb;->zzggd:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzclb;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzbbx;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzua$zza$zza;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzclb;"
        }
    .end annotation

    .line 8
    new-instance v6, Lcom/google/android/gms/internal/ads/zzclb;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzclb;-><init>(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)V

    return-object v6
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 8

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclb;->zzesu:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclb;->zzfuc:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclb;->zzfup:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbbx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclb;->zzfow:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzua$zza$zza;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzclb;->zzggd:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 12
    new-instance v5, Lcom/google/android/gms/internal/ads/zzts;

    new-instance v6, Lcom/google/android/gms/internal/ads/zztx;

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/zztx;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/zzts;-><init>(Lcom/google/android/gms/internal/ads/zztx;)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua$zzu;->zzot()Lcom/google/android/gms/internal/ads/zzua$zzu$zza;

    move-result-object v0

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzbbx;->zzeel:I

    .line 14
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzua$zzu$zza;->zzcq(I)Lcom/google/android/gms/internal/ads/zzua$zzu$zza;

    move-result-object v0

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzbbx;->zzeem:I

    .line 15
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzua$zzu$zza;->zzcr(I)Lcom/google/android/gms/internal/ads/zzua$zzu$zza;

    move-result-object v0

    .line 16
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzbbx;->zzeen:Z

    if-eqz v2, :cond_48

    const/4 v2, 0x0

    goto :goto_49

    :cond_48
    const/4 v2, 0x2

    :goto_49
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzua$zzu$zza;->zzcs(I)Lcom/google/android/gms/internal/ads/zzua$zzu$zza;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzu;

    .line 18
    new-instance v2, Lcom/google/android/gms/internal/ads/zzclc;

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzclc;-><init>(Lcom/google/android/gms/internal/ads/zzua$zza$zza;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzua$zzu;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzts;->zza(Lcom/google/android/gms/internal/ads/zztr;)V

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 20
    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzts;

    return-object v0
.end method
