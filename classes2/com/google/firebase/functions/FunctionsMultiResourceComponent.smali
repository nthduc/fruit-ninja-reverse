.class Lcom/google/firebase/functions/FunctionsMultiResourceComponent;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-functions@@19.0.2"


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final contextProvider:Lcom/google/firebase/functions/ContextProvider;

.field private final instances:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/functions/FirebaseFunctions;",
            ">;"
        }
    .end annotation
.end field

.field private final projectId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/functions/ContextProvider;Ljava/lang/String;)V
    .registers 5

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/functions/FunctionsMultiResourceComponent;->instances:Ljava/util/Map;

    .line 38
    iput-object p1, p0, Lcom/google/firebase/functions/FunctionsMultiResourceComponent;->applicationContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/google/firebase/functions/FunctionsMultiResourceComponent;->contextProvider:Lcom/google/firebase/functions/ContextProvider;

    .line 40
    iput-object p3, p0, Lcom/google/firebase/functions/FunctionsMultiResourceComponent;->projectId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method declared-synchronized get(Ljava/lang/String;)Lcom/google/firebase/functions/FirebaseFunctions;
    .registers 6

    monitor-enter p0

    .line 44
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/functions/FunctionsMultiResourceComponent;->instances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/functions/FirebaseFunctions;

    if-nez v0, :cond_1b

    .line 46
    new-instance v0, Lcom/google/firebase/functions/FirebaseFunctions;

    iget-object v1, p0, Lcom/google/firebase/functions/FunctionsMultiResourceComponent;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/firebase/functions/FunctionsMultiResourceComponent;->projectId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/functions/FunctionsMultiResourceComponent;->contextProvider:Lcom/google/firebase/functions/ContextProvider;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/firebase/functions/FirebaseFunctions;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/functions/ContextProvider;)V

    .line 47
    iget-object v1, p0, Lcom/google/firebase/functions/FunctionsMultiResourceComponent;->instances:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 49
    :cond_1b
    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
