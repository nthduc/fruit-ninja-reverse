.class final Lcom/google/android/gms/internal/ads/zzemd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/android/gms/internal/ads/zzeiw;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzimu:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/internal/ads/zzemc;",
            ">;"
        }
    .end annotation
.end field

.field private zzimv:Lcom/google/android/gms/internal/ads/zzeiw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeip;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzemc;

    if-eqz v0, :cond_24

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzemc;

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeip;->zzbej()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzemd;->zzimu:Ljava/util/ArrayDeque;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemd;->zzimu:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzemc;->zza(Lcom/google/android/gms/internal/ads/zzemc;)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzemd;->zzak(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzeiw;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemd;->zzimv:Lcom/google/android/gms/internal/ads/zzeiw;

    return-void

    :cond_24
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzemd;->zzimu:Ljava/util/ArrayDeque;

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeiw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemd;->zzimv:Lcom/google/android/gms/internal/ads/zzeiw;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzemb;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzemd;-><init>(Lcom/google/android/gms/internal/ads/zzeip;)V

    return-void
.end method

.method private final zzak(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzeiw;
    .registers 3

    .line 12
    :goto_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzemc;

    if-eqz v0, :cond_10

    .line 13
    check-cast p1, Lcom/google/android/gms/internal/ads/zzemc;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemd;->zzimu:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzemc;->zza(Lcom/google/android/gms/internal/ads/zzemc;)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p1

    goto :goto_0

    .line 17
    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeiw;

    return-object p1
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemd;->zzimv:Lcom/google/android/gms/internal/ads/zzeiw;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 4

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemd;->zzimv:Lcom/google/android/gms/internal/ads/zzeiw;

    if-eqz v0, :cond_2a

    .line 25
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemd;->zzimu:Ljava/util/ArrayDeque;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_26

    .line 27
    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemd;->zzimu:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzemc;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzemc;->zzb(Lcom/google/android/gms/internal/ads/zzemc;)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzemd;->zzak(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzeiw;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeip;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v1, 0x0

    .line 31
    :goto_27
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzemd;->zzimv:Lcom/google/android/gms/internal/ads/zzeiw;

    return-object v0

    .line 22
    :cond_2a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    return-void
.end method

.method public final remove()V
    .registers 2

    .line 19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
