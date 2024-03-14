.class final Lcom/google/android/gms/common/api/internal/zaay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.2.1"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zahm:Lcom/google/android/gms/common/api/internal/StatusPendingResult;

.field private final synthetic zahn:Lcom/google/android/gms/common/api/internal/zaau;

.field private final synthetic zaho:Z

.field private final synthetic zahp:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaau;Lcom/google/android/gms/common/api/internal/StatusPendingResult;ZLcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaay;->zahn:Lcom/google/android/gms/common/api/internal/zaau;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaay;->zahm:Lcom/google/android/gms/common/api/internal/StatusPendingResult;

    iput-boolean p3, p0, Lcom/google/android/gms/common/api/internal/zaay;->zaho:Z

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zaay;->zahp:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaay;->zahn:Lcom/google/android/gms/common/api/internal/zaau;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaau;->zac(Lcom/google/android/gms/common/api/internal/zaau;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/Storage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaf()V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaay;->zahn:Lcom/google/android/gms/common/api/internal/zaau;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaay;->zahn:Lcom/google/android/gms/common/api/internal/zaau;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    .line 6
    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaay;->zahm:Lcom/google/android/gms/common/api/internal/StatusPendingResult;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 7
    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zaay;->zaho:Z

    if-eqz p1, :cond_30

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaay;->zahp:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_30
    return-void
.end method
