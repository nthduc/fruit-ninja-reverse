.class public final Lcom/google/android/gms/internal/ads/zzdkc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;
.implements Lcom/google/android/gms/internal/ads/zzbui;
.implements Lcom/google/android/gms/internal/ads/zzbwb;
.implements Lcom/google/android/gms/internal/ads/zzdls;


# instance fields
.field private final zzhao:Lcom/google/android/gms/internal/ads/zzdpw;

.field private final zzhap:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzsh;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhaq:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzsm;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhar:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzsq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhas:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzbwb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhat:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/ads/internal/overlay/zzp;",
            ">;"
        }
    .end annotation
.end field

.field private zzhau:Lcom/google/android/gms/internal/ads/zzdkc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpw;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhap:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhaq:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhar:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhas:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhat:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhau:Lcom/google/android/gms/internal/ads/zzdkc;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhao:Lcom/google/android/gms/internal/ads/zzdpw;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzdkc;)Lcom/google/android/gms/internal/ads/zzdkc;
    .registers 3

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhao:Lcom/google/android/gms/internal/ads/zzdpw;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkc;-><init>(Lcom/google/android/gms/internal/ads/zzdpw;)V

    .line 11
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdkc;->zzb(Lcom/google/android/gms/internal/ads/zzdls;)V

    return-object v0
.end method


# virtual methods
.method public final onAdClosed()V
    .registers 4

    move-object v0, p0

    .line 32
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhau:Lcom/google/android/gms/internal/ads/zzdkc;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    .line 34
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhao:Lcom/google/android/gms/internal/ads/zzdpw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpw;->onAdClosed()V

    .line 35
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhaq:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdkg;->zzhaw:Lcom/google/android/gms/internal/ads/zzdlk;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    .line 36
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhar:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdkj;->zzhaw:Lcom/google/android/gms/internal/ads/zzdlk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    return-void
.end method

.method public final onPause()V
    .registers 1

    return-void
.end method

.method public final onResume()V
    .registers 1

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzp;)V
    .registers 3

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhat:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbwb;)V
    .registers 3

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhas:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsq;)V
    .registers 3

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhar:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzajx()V
    .registers 4

    move-object v0, p0

    .line 38
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhau:Lcom/google/android/gms/internal/ads/zzdkc;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    .line 40
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhas:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdki;->zzhaw:Lcom/google/android/gms/internal/ads/zzdlk;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    .line 41
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhar:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdkl;->zzhaw:Lcom/google/android/gms/internal/ads/zzdlk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdls;)V
    .registers 2

    .line 50
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdkc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhau:Lcom/google/android/gms/internal/ads/zzdkc;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzsg;)V
    .registers 4

    move-object v0, p0

    .line 23
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhau:Lcom/google/android/gms/internal/ads/zzdkc;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    .line 25
    :cond_7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhap:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdkf;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdkf;-><init>(Lcom/google/android/gms/internal/ads/zzsg;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzsh;)V
    .registers 3

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzsm;)V
    .registers 3

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhaq:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 5

    move-object v0, p0

    .line 27
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhau:Lcom/google/android/gms/internal/ads/zzdkc;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    .line 29
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhap:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdke;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzdke;-><init>(Lcom/google/android/gms/internal/ads/zzva;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    .line 30
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhap:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdkh;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdkh;-><init>(Lcom/google/android/gms/internal/ads/zzva;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    return-void
.end method

.method public final zzum()V
    .registers 3

    move-object v0, p0

    .line 43
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhau:Lcom/google/android/gms/internal/ads/zzdkc;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    .line 45
    :cond_7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdkc;->zzhat:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdkk;->zzhaw:Lcom/google/android/gms/internal/ads/zzdlk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    return-void
.end method

.method public final zzun()V
    .registers 1

    return-void
.end method
