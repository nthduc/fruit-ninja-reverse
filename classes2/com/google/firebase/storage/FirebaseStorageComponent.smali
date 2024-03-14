.class Lcom/google/firebase/storage/FirebaseStorageComponent;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.1.1"


# instance fields
.field private final app:Lcom/google/firebase/FirebaseApp;

.field private final authProvider:Lcom/google/firebase/inject/Provider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/storage/FirebaseStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;)V
    .registers 4
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/inject/Provider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/FirebaseStorageComponent;->instances:Ljava/util/Map;

    .line 35
    iput-object p1, p0, Lcom/google/firebase/storage/FirebaseStorageComponent;->app:Lcom/google/firebase/FirebaseApp;

    .line 36
    iput-object p2, p0, Lcom/google/firebase/storage/FirebaseStorageComponent;->authProvider:Lcom/google/firebase/inject/Provider;

    return-void
.end method


# virtual methods
.method declared-synchronized clearInstancesForTesting()V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 52
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/storage/FirebaseStorageComponent;->instances:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 53
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized get(Ljava/lang/String;)Lcom/google/firebase/storage/FirebaseStorage;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    .line 42
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/storage/FirebaseStorageComponent;->instances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/storage/FirebaseStorage;

    if-nez v0, :cond_19

    .line 44
    new-instance v0, Lcom/google/firebase/storage/FirebaseStorage;

    iget-object v1, p0, Lcom/google/firebase/storage/FirebaseStorageComponent;->app:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/storage/FirebaseStorageComponent;->authProvider:Lcom/google/firebase/inject/Provider;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/firebase/storage/FirebaseStorage;-><init>(Ljava/lang/String;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;)V

    .line 45
    iget-object v1, p0, Lcom/google/firebase/storage/FirebaseStorageComponent;->instances:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 47
    :cond_19
    monitor-exit p0

    return-object v0

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
