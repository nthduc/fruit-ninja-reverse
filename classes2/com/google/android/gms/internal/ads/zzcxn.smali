.class final Lcom/google/android/gms/internal/ads/zzcxn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcas;


# instance fields
.field private final synthetic zzgqc:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final synthetic zzgqp:Lcom/google/android/gms/internal/ads/zzdog;

.field private final synthetic zzgqq:Lcom/google/android/gms/internal/ads/zzctc;

.field final synthetic zzgqr:Lcom/google/android/gms/internal/ads/zzcxl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcxl;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzgqr:Lcom/google/android/gms/internal/ads/zzcxl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzgqp:Lcom/google/android/gms/internal/ads/zzdog;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzgqc:Lcom/google/android/gms/internal/ads/zzdnv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzgqq:Lcom/google/android/gms/internal/ads/zzctc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializationSucceeded()V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzgqr:Lcom/google/android/gms/internal/ads/zzcxl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcxl;->zza(Lcom/google/android/gms/internal/ads/zzcxl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcxq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzgqp:Lcom/google/android/gms/internal/ads/zzdog;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzgqc:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzgqq:Lcom/google/android/gms/internal/ads/zzctc;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcxq;-><init>(Lcom/google/android/gms/internal/ads/zzcxn;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzdx(I)V
    .registers 4

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzgqq:Lcom/google/android/gms/internal/ads/zzctc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzctc;->zzcib:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Fail to initialize adapter "

    if-eqz v0, :cond_15

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    :cond_15
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1a
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void
.end method
