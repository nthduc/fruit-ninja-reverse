.class final Lcom/google/android/gms/common/api/internal/zaak;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.2.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;


# instance fields
.field private final mApi:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "*>;"
        }
    .end annotation
.end field

.field private final zaeg:Z

.field private final zagn:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/internal/zaai;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaai;Lcom/google/android/gms/common/api/Api;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zaai;",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaak;->zagn:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaak;->mApi:Lcom/google/android/gms/common/api/Api;

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/common/api/internal/zaak;->zaeg:Z

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zaak;)Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lcom/google/android/gms/common/api/internal/zaak;->zaeg:Z

    return p0
.end method


# virtual methods
.method public final onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 6
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaak;->zagn:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaai;

    if-nez v0, :cond_b

    return-void

    .line 9
    :cond_b
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaai;->zad(Lcom/google/android/gms/common/api/internal/zaai;)Lcom/google/android/gms/common/api/internal/zabc;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabc;->zaej:Lcom/google/android/gms/common/api/internal/zaau;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    const-string v2, "onReportServiceBinding must be called on the GoogleApiClient handler thread"

    .line 10
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaai;->zac(Lcom/google/android/gms/common/api/internal/zaai;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 12
    :try_start_2b
    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/internal/zaai;->zaa(Lcom/google/android/gms/common/api/internal/zaai;I)Z

    move-result v1
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_57

    if-nez v1, :cond_39

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaai;->zac(Lcom/google/android/gms/common/api/internal/zaai;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 15
    :cond_39
    :try_start_39
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_46

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaak;->mApi:Lcom/google/android/gms/common/api/Api;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/zaak;->zaeg:Z

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/common/api/internal/zaai;->zaa(Lcom/google/android/gms/common/api/internal/zaai;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V

    .line 17
    :cond_46
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaai;->zal(Lcom/google/android/gms/common/api/internal/zaai;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaai;->zak(Lcom/google/android/gms/common/api/internal/zaai;)V
    :try_end_4f
    .catchall {:try_start_39 .. :try_end_4f} :catchall_57

    .line 19
    :cond_4f
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaai;->zac(Lcom/google/android/gms/common/api/internal/zaai;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_57
    move-exception p1

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaai;->zac(Lcom/google/android/gms/common/api/internal/zaai;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 22
    throw p1
.end method
