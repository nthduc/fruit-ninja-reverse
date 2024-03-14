.class public final Lcom/google/android/gms/internal/ads/zzdhr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzdho;",
        ">;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzdqs:Landroid/content/pm/PackageInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzgyr:Lcom/google/android/gms/internal/ads/zzaxx;

.field private final zzgyu:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaxx;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .registers 5
    .param p4    # Landroid/content/pm/PackageInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhr;->zzgyr:Lcom/google/android/gms/internal/ads/zzaxx;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhr;->executor:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdhr;->zzgyu:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdhr;->zzdqs:Landroid/content/pm/PackageInfo;

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdho;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhr;->zzgyr:Lcom/google/android/gms/internal/ads/zzaxx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhr;->zzgyu:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdhr;->zzdqs:Landroid/content/pm/PackageInfo;

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaxx;->zza(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdhq;->zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdhr;->executor:Ljava/util/concurrent/Executor;

    .line 9
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdht;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdht;-><init>(Lcom/google/android/gms/internal/ads/zzdhr;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdhr;->executor:Ljava/util/concurrent/Executor;

    .line 10
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdho;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhr;->zzgyu:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdho;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
