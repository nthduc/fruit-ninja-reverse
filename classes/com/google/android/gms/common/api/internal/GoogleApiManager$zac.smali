.class final Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.2.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zach;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/GoogleApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zac"
.end annotation


# instance fields
.field private final zafv:Lcom/google/android/gms/common/api/internal/ApiKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/ApiKey<",
            "*>;"
        }
    .end annotation
.end field

.field private final zair:Lcom/google/android/gms/common/api/Api$Client;

.field final synthetic zajb:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

.field private zaji:Lcom/google/android/gms/common/internal/IAccountAccessor;

.field private zajj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private zajk:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/Api$Client;Lcom/google/android/gms/common/api/internal/ApiKey;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$Client;",
            "Lcom/google/android/gms/common/api/internal/ApiKey<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zajb:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zaji:Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zajj:Ljava/util/Set;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zajk:Z

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zair:Lcom/google/android/gms/common/api/Api$Client;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zafv:Lcom/google/android/gms/common/api/internal/ApiKey;

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;)Lcom/google/android/gms/common/api/internal/ApiKey;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zafv:Lcom/google/android/gms/common/api/internal/ApiKey;

    return-object p0
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;Z)Z
    .registers 2

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zajk:Z

    return p1
.end method

.method static synthetic zab(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;)Lcom/google/android/gms/common/api/Api$Client;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zair:Lcom/google/android/gms/common/api/Api$Client;

    return-object p0
.end method

.method private final zabp()V
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zajk:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zaji:Lcom/google/android/gms/common/internal/IAccountAccessor;

    if-eqz v0, :cond_f

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zair:Lcom/google/android/gms/common/api/Api$Client;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zajj:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    :cond_f
    return-void
.end method

.method static synthetic zac(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zabp()V

    return-void
.end method


# virtual methods
.method public final onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zajb:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/zabn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/zabn;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zaa(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/IAccountAccessor;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_d

    if-nez p2, :cond_5

    goto :goto_d

    .line 15
    :cond_5
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zaji:Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 16
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zajj:Ljava/util/Set;

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zabp()V

    return-void

    .line 13
    :cond_d
    :goto_d
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GoogleApiManager"

    const-string v0, "Received null response from onSignInSuccess"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zag(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final zag(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zajb:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaj(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zafv:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zag(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
