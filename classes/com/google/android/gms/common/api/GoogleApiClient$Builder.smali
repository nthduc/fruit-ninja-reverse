.class public final Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.2.1"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/GoogleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zabm:Landroid/os/Looper;

.field private final zabv:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zabw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private zabx:I

.field private zaby:Landroid/view/View;

.field private zabz:Ljava/lang/String;

.field private zaca:Ljava/lang/String;

.field private final zacb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Lcom/google/android/gms/common/internal/ClientSettings$OptionalApiSettings;",
            ">;"
        }
    .end annotation
.end field

.field private zacc:Z

.field private final zacd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">;"
        }
    .end annotation
.end field

.field private zace:Lcom/google/android/gms/common/api/internal/LifecycleActivity;

.field private zacf:I

.field private zacg:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

.field private zach:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private zaci:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zad;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field private final zacj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final zack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;"
        }
    .end annotation
.end field

.field private zacl:Z

.field private zax:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zabv:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zabw:Ljava/util/Set;

    .line 4
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacb:Ljava/util/Map;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacc:Z

    .line 6
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacd:Ljava/util/Map;

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacf:I

    .line 8
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zach:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 9
    sget-object v1, Lcom/google/android/gms/signin/zaa;->zapx:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iput-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaci:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacj:Ljava/util/ArrayList;

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zack:Ljava/util/ArrayList;

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacl:Z

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zabm:Landroid/os/Looper;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zabz:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaca:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "Must provide a connected listener"

    .line 19
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacj:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "Must provide a connection failed listener"

    .line 21
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zack:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final varargs zaa(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;[Lcom/google/android/gms/common/api/Scope;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/Api<",
            "TO;>;TO;[",
            "Lcom/google/android/gms/common/api/Scope;",
            ")V"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zah()Lcom/google/android/gms/common/api/Api$BaseClientBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;->getImpliedScopes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 138
    array-length p2, p3

    const/4 v1, 0x0

    :goto_f
    if-ge v1, p2, :cond_19

    aget-object v2, p3, v1

    .line 139
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 141
    :cond_19
    iget-object p2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacb:Ljava/util/Map;

    new-instance p3, Lcom/google/android/gms/common/internal/ClientSettings$OptionalApiSettings;

    invoke-direct {p3, v0}, Lcom/google/android/gms/common/internal/ClientSettings$OptionalApiSettings;-><init>(Ljava/util/Set;)V

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 4
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "+",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NotRequiredOptions;",
            ">;)",
            "Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
        }
    .end annotation

    const-string v0, "Api must not be null"

    .line 43
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacd:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zah()Lcom/google/android/gms/common/api/Api$BaseClientBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;->getImpliedScopes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zabw:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zabv:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 4
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/Api<",
            "TO;>;TO;)",
            "Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
        }
    .end annotation

    const-string v0, "Api must not be null"

    .line 53
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Null options are not permitted for this Api"

    .line 54
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacd:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zah()Lcom/google/android/gms/common/api/Api$BaseClientBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;->getImpliedScopes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 57
    iget-object p2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zabw:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 58
    iget-object p2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zabv:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final varargs addApiIfAvailable(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 5
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/Api<",
            "TO;>;TO;[",
            "Lcom/google/android/gms/common/api/Scope;",
            ")",
            "Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
        }
    .end annotation

    const-string v0, "Api must not be null"

    .line 60
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Null options are not permitted for this Api"

    .line 61
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacd:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaa(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;[Lcom/google/android/gms/common/api/Scope;)V

    return-object p0
.end method

.method public final varargs addApiIfAvailable(Lcom/google/android/gms/common/api/Api;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 5
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "+",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NotRequiredOptions;",
            ">;[",
            "Lcom/google/android/gms/common/api/Scope;",
            ")",
            "Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
        }
    .end annotation

    const-string v0, "Api must not be null"

    .line 49
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacd:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaa(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;[Lcom/google/android/gms/common/api/Scope;)V

    return-object p0
.end method

.method public final addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Listener must not be null"

    .line 27
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Listener must not be null"

    .line 30
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/Scope;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Scope must not be null"

    .line 36
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zabv:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addScopeNames([Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x0

    .line 39
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_13

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zabv:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/common/api/Scope;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-object p0
.end method

.method public final build()Lcom/google/android/gms/common/api/GoogleApiClient;
    .registers 23

    move-object/from16 v1, p0

    .line 82
    iget-object v0, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacd:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    const-string v3, "must call addApi() to add at least one API"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->buildClientSettings()Lcom/google/android/gms/common/internal/ClientSettings;

    move-result-object v0

    const/4 v3, 0x0

    .line 88
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ClientSettings;->getOptionalApiSettings()Ljava/util/Map;

    move-result-object v11

    .line 89
    new-instance v12, Landroidx/collection/ArrayMap;

    invoke-direct {v12}, Landroidx/collection/ArrayMap;-><init>()V

    .line 90
    new-instance v14, Landroidx/collection/ArrayMap;

    invoke-direct {v14}, Landroidx/collection/ArrayMap;-><init>()V

    .line 91
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 92
    iget-object v4, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacd:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    :cond_35
    :goto_35
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cb

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/google/android/gms/common/api/Api;

    .line 93
    iget-object v4, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacd:Ljava/util/Map;

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 94
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_50

    const/4 v4, 0x1

    goto :goto_51

    :cond_50
    const/4 v4, 0x0

    .line 95
    :goto_51
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v12, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v9, Lcom/google/android/gms/common/api/internal/zaq;

    invoke-direct {v9, v10, v4}, Lcom/google/android/gms/common/api/internal/zaq;-><init>(Lcom/google/android/gms/common/api/Api;Z)V

    .line 97
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {v10}, Lcom/google/android/gms/common/api/Api;->zai()Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    move-result-object v19

    .line 100
    iget-object v5, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zabm:Landroid/os/Looper;

    move-object/from16 v4, v19

    move-object v7, v0

    move-object/from16 v8, v18

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v10, v20

    .line 102
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v4

    .line 104
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/common/api/Api;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v5

    invoke-interface {v14, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;->getPriority()I

    move-result v5

    if-ne v5, v2, :cond_8b

    if-eqz v18, :cond_88

    const/4 v5, 0x1

    goto :goto_89

    :cond_88
    const/4 v5, 0x0

    :goto_89
    move/from16 v17, v5

    .line 107
    :cond_8b
    invoke-interface {v4}, Lcom/google/android/gms/common/api/Api$Client;->providesSignIn()Z

    move-result v4

    if-eqz v4, :cond_35

    if-nez v3, :cond_96

    move-object/from16 v3, v21

    goto :goto_35

    .line 109
    :cond_96
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 110
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be used with "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_cb
    if-eqz v3, :cond_123

    if-nez v17, :cond_f9

    .line 117
    iget-object v4, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zax:Landroid/accounts/Account;

    if-nez v4, :cond_d5

    const/4 v4, 0x1

    goto :goto_d6

    :cond_d5
    const/4 v4, 0x0

    :goto_d6
    new-array v5, v2, [Ljava/lang/Object;

    .line 118
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v16

    const-string v6, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead"

    .line 119
    invoke-static {v4, v6, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v4, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zabv:Ljava/util/Set;

    iget-object v5, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zabw:Ljava/util/Set;

    .line 121
    invoke-interface {v4, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    new-array v5, v2, [Ljava/lang/Object;

    .line 122
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v16

    const-string v3, "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead."

    .line 123
    invoke-static {v4, v3, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_123

    .line 115
    :cond_f9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 116
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x52

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "With using "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", GamesOptions can only be specified within GoogleSignInOptions.Builder"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_123
    :goto_123
    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 126
    invoke-static {v3, v2}, Lcom/google/android/gms/common/api/internal/zaau;->zaa(Ljava/lang/Iterable;Z)I

    move-result v16

    .line 127
    new-instance v2, Lcom/google/android/gms/common/api/internal/zaau;

    iget-object v5, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v6}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iget-object v7, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zabm:Landroid/os/Looper;

    iget-object v9, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zach:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v10, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaci:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v3, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacj:Ljava/util/ArrayList;

    iget-object v13, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zack:Ljava/util/ArrayList;

    iget v11, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacf:I

    const/16 v18, 0x0

    move-object v4, v2

    move-object v8, v0

    move v0, v11

    move-object v11, v12

    move-object v12, v3

    move-object v3, v15

    move v15, v0

    move-object/from16 v17, v3

    invoke-direct/range {v4 .. v18}, Lcom/google/android/gms/common/api/internal/zaau;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;Z)V

    .line 129
    invoke-static {}, Lcom/google/android/gms/common/api/GoogleApiClient;->zak()Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 130
    :try_start_153
    invoke-static {}, Lcom/google/android/gms/common/api/GoogleApiClient;->zak()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    monitor-exit v3
    :try_end_15b
    .catchall {:try_start_153 .. :try_end_15b} :catchall_16d

    .line 132
    iget v0, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacf:I

    if-ltz v0, :cond_16c

    .line 134
    iget-object v0, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zace:Lcom/google/android/gms/common/api/internal/LifecycleActivity;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zai;->zaa(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/zai;

    move-result-object v0

    iget v3, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacf:I

    iget-object v4, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacg:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .line 135
    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/common/api/internal/zai;->zaa(ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    :cond_16c
    return-object v2

    :catchall_16d
    move-exception v0

    .line 131
    :try_start_16e
    monitor-exit v3
    :try_end_16f
    .catchall {:try_start_16e .. :try_end_16f} :catchall_16d

    throw v0

    return-void
.end method

.method public final buildClientSettings()Lcom/google/android/gms/common/internal/ClientSettings;
    .registers 12
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 78
    sget-object v0, Lcom/google/android/gms/signin/SignInOptions;->DEFAULT:Lcom/google/android/gms/signin/SignInOptions;

    .line 79
    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacd:Ljava/util/Map;

    sget-object v2, Lcom/google/android/gms/signin/zaa;->API:Lcom/google/android/gms/common/api/Api;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacd:Ljava/util/Map;

    sget-object v1, Lcom/google/android/gms/signin/zaa;->API:Lcom/google/android/gms/common/api/Api;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/SignInOptions;

    :cond_16
    move-object v9, v0

    .line 81
    new-instance v0, Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zax:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zabv:Ljava/util/Set;

    iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacb:Ljava/util/Map;

    iget v5, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zabx:I

    iget-object v6, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaby:Landroid/view/View;

    iget-object v7, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zabz:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaca:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/common/internal/ClientSettings;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/SignInOptions;Z)V

    return-object v0
.end method

.method public final enableAutoManage(Landroidx/fragment/app/FragmentActivity;ILcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 6
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70
    new-instance v0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleActivity;-><init>(Landroid/app/Activity;)V

    if-ltz p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    const-string v1, "clientId must be non-negative"

    .line 71
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 72
    iput p2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacf:I

    .line 73
    iput-object p3, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zacg:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .line 74
    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zace:Lcom/google/android/gms/common/api/internal/LifecycleActivity;

    return-object p0
.end method

.method public final enableAutoManage(Landroidx/fragment/app/FragmentActivity;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 4
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->enableAutoManage(Landroidx/fragment/app/FragmentActivity;ILcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_c

    .line 65
    :cond_4
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_c
    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zax:Landroid/accounts/Account;

    return-object p0
.end method

.method public final setGravityForPopups(I)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 2

    .line 68
    iput p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zabx:I

    return-object p0
.end method

.method public final setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 3
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Handler must not be null"

    .line 24
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zabm:Landroid/os/Looper;

    return-object p0
.end method

.method public final setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "View must not be null"

    .line 33
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaby:Landroid/view/View;

    return-object p0
.end method

.method public final useDefaultAccount()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 2

    const-string v0, "<<default account>>"

    .line 67
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    return-object v0
.end method
