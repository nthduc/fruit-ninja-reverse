.class public abstract Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;
    .registers 3

    const-class v0, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    const-class v2, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    invoke-virtual {v1, v2}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract createDynamicLink()Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
.end method

.method public abstract getDynamicLink(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDynamicLink(Landroid/net/Uri;)Lcom/google/android/gms/tasks/Task;
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;",
            ">;"
        }
    .end annotation
.end method
