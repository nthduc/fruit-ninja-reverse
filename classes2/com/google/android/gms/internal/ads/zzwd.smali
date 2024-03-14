.class final Lcom/google/android/gms/internal/ads/zzwd;
.super Lcom/google/android/gms/internal/ads/zzwn;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzwn<",
        "Lcom/google/android/gms/internal/ads/zzaqp;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzcii:Lcom/google/android/gms/internal/ads/zzanb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzanb;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwd;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwd;->zzcii:Lcom/google/android/gms/internal/ads/zzanb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwn;-><init>()V

    return-void
.end method

.method private final zzps()Lcom/google/android/gms/internal/ads/zzaqp;
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwd;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    .line 3
    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwd;->val$context:Landroid/content/Context;

    const-string v2, "com.google.android.gms.ads.DynamiteSignalGeneratorCreatorImpl"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzwc;->zzbxx:Lcom/google/android/gms/internal/ads/zzbbs;

    .line 4
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbbt;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbs;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaqu;

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwd;->zzcii:Lcom/google/android/gms/internal/ads/zzanb;

    const v3, 0xc120eb0

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaqu;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzanb;I)Lcom/google/android/gms/internal/ads/zzaqp;

    move-result-object v0
    :try_end_1b
    .catch Lcom/google/android/gms/internal/ads/zzbbv; {:try_start_6 .. :try_end_1b} :catch_1c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_1b} :catch_1c

    return-object v0

    :catch_1c
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzxp;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwd;->val$context:Landroid/content/Context;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwd;->zzcii:Lcom/google/android/gms/internal/ads/zzanb;

    const v2, 0xc120eb0

    .line 13
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzxp;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzanb;I)Lcom/google/android/gms/internal/ads/zzaqp;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic zzpp()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic zzpq()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwd;->zzps()Lcom/google/android/gms/internal/ads/zzaqp;

    move-result-object v0

    return-object v0
.end method
