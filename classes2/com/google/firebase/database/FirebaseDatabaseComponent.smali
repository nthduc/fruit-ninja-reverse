.class Lcom/google/firebase/database/FirebaseDatabaseComponent;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"


# instance fields
.field private final app:Lcom/google/firebase/FirebaseApp;

.field private final authProvider:Lcom/google/firebase/database/core/AuthTokenProvider;

.field private final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/core/RepoInfo;",
            "Lcom/google/firebase/database/FirebaseDatabase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/internal/InternalAuthProvider;)V
    .registers 4
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/internal/InternalAuthProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->instances:Ljava/util/Map;

    .line 42
    iput-object p1, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->app:Lcom/google/firebase/FirebaseApp;

    if-eqz p2, :cond_15

    .line 45
    invoke-static {p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->forAuthenticatedAccess(Lcom/google/firebase/auth/internal/InternalAuthProvider;)Lcom/google/firebase/database/core/AuthTokenProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->authProvider:Lcom/google/firebase/database/core/AuthTokenProvider;

    goto :goto_1b

    .line 47
    :cond_15
    invoke-static {}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->forUnauthenticatedAccess()Lcom/google/firebase/database/core/AuthTokenProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->authProvider:Lcom/google/firebase/database/core/AuthTokenProvider;

    :goto_1b
    return-void
.end method


# virtual methods
.method declared-synchronized get(Lcom/google/firebase/database/core/RepoInfo;)Lcom/google/firebase/database/FirebaseDatabase;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    .line 54
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->instances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/FirebaseDatabase;

    if-nez v0, :cond_38

    .line 56
    new-instance v0, Lcom/google/firebase/database/core/DatabaseConfig;

    invoke-direct {v0}, Lcom/google/firebase/database/core/DatabaseConfig;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->isDefaultApp()Z

    move-result v1

    if-nez v1, :cond_21

    .line 61
    iget-object v1, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/DatabaseConfig;->setSessionPersistenceKey(Ljava/lang/String;)V

    .line 63
    :cond_21
    iget-object v1, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/DatabaseConfig;->setFirebaseApp(Lcom/google/firebase/FirebaseApp;)V

    .line 64
    iget-object v1, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->authProvider:Lcom/google/firebase/database/core/AuthTokenProvider;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/DatabaseConfig;->setAuthTokenProvider(Lcom/google/firebase/database/core/AuthTokenProvider;)V

    .line 66
    new-instance v1, Lcom/google/firebase/database/FirebaseDatabase;

    iget-object v2, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->app:Lcom/google/firebase/FirebaseApp;

    invoke-direct {v1, v2, p1, v0}, Lcom/google/firebase/database/FirebaseDatabase;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/database/core/RepoInfo;Lcom/google/firebase/database/core/DatabaseConfig;)V

    .line 67
    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->instances:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_3a

    move-object v0, v1

    .line 69
    :cond_38
    monitor-exit p0

    return-object v0

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
