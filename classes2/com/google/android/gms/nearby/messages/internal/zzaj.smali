.class final Lcom/google/android/gms/nearby/messages/internal/zzaj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final zzhm:Landroid/app/Activity;

.field private final zzhn:Lcom/google/android/gms/nearby/messages/internal/zzah;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/nearby/messages/internal/zzah;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzaj;->zzhm:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/internal/zzaj;->zzhn:Lcom/google/android/gms/nearby/messages/internal/zzah;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/nearby/messages/internal/zzah;Lcom/google/android/gms/nearby/messages/internal/zzai;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzaj;-><init>(Landroid/app/Activity;Lcom/google/android/gms/nearby/messages/internal/zzah;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzaj;->zzhm:Landroid/app/Activity;

    if-ne p1, v0, :cond_27

    const/4 v0, 0x2

    const-string v1, "NearbyMessagesClient"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "Unregistering ClientLifecycleSafetyNet\'s ActivityLifecycleCallbacks for %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_27
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzaj;->zzhm:Landroid/app/Activity;

    if-ne p1, v0, :cond_29

    const/4 v0, 0x1

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzaj;->zzhn:Lcom/google/android/gms/nearby/messages/internal/zzah;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzf(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v1

    const/4 v2, 0x2

    const-string v3, "NearbyMessagesClient"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_29

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    aput-object v1, v2, v0

    const-string p1, "Failed to emit ACTIVITY_STOPPED from ClientLifecycleSafetyNet for Activity %s: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void
.end method
