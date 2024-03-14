.class public Lcom/applovin/impl/mediation/debugger/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/debugger/a/d$b;,
        Lcom/applovin/impl/mediation/debugger/a/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;",
        "Ljava/lang/Comparable<",
        "Lcom/applovin/impl/mediation/debugger/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Lcom/applovin/impl/mediation/debugger/a/d$a;

.field private c:I

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:I

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/mediation/MaxAdFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/applovin/impl/mediation/debugger/a/e;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/a/d;->a:Lcom/applovin/impl/sdk/j;

    const-string v0, ""

    const-string v1, "name"

    invoke-static {p1, v1, v0, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->i:Ljava/lang/String;

    const-string v1, "display_name"

    invoke-static {p1, v1, v0, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->j:Ljava/lang/String;

    const-string v1, "adapter_class"

    invoke-static {p1, v1, v0, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/applovin/impl/mediation/debugger/a/d;->k:Ljava/lang/String;

    const-string v2, "latest_adapter_version"

    invoke-static {p1, v2, v0, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/applovin/impl/mediation/debugger/a/d;->n:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "test_mode_requires_init"

    invoke-static {p1, v4, v3, p2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/applovin/impl/mediation/debugger/a/d;->h:Z

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "configuration"

    invoke-static {p1, v4, v3, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/applovin/impl/mediation/debugger/a/d;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/applovin/impl/mediation/debugger/a/d;->q:Ljava/util/List;

    invoke-direct {p0, v3, p2}, Lcom/applovin/impl/mediation/debugger/a/d;->b(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/applovin/impl/mediation/debugger/a/d;->r:Ljava/util/List;

    new-instance v4, Lcom/applovin/impl/mediation/debugger/a/e;

    invoke-direct {v4, v3, p2}, Lcom/applovin/impl/mediation/debugger/a/e;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iput-object v4, p0, Lcom/applovin/impl/mediation/debugger/a/d;->s:Lcom/applovin/impl/mediation/debugger/a/e;

    const-string v3, "existence_class"

    invoke-static {p1, v3, v0, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/r;->e(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/applovin/impl/mediation/debugger/a/d;->d:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/mediation/debugger/a/d;->k:Ljava/lang/String;

    invoke-static {v4, p2}, Lcom/applovin/impl/mediation/c/c;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Lcom/applovin/mediation/adapter/MaxAdapter;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_af

    iput-boolean v5, p0, Lcom/applovin/impl/mediation/debugger/a/d;->e:Z

    :try_start_71
    invoke-interface {v4}, Lcom/applovin/mediation/adapter/MaxAdapter;->getAdapterVersion()Ljava/lang/String;

    move-result-object v2
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_75} :catch_8b

    :try_start_75
    invoke-interface {v4}, Lcom/applovin/mediation/adapter/MaxAdapter;->getSdkVersion()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_80

    invoke-interface {v4}, Lcom/applovin/mediation/adapter/MaxAdapter;->getSdkVersion()Ljava/lang/String;

    move-result-object v6
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_7f} :catch_88

    goto :goto_81

    :cond_80
    move-object v6, v0

    :goto_81
    :try_start_81
    invoke-direct {p0, v4}, Lcom/applovin/impl/mediation/debugger/a/d;->a(Lcom/applovin/mediation/adapter/MaxAdapter;)Ljava/util/List;

    move-result-object v3
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_85} :catch_86

    goto :goto_b3

    :catch_86
    move-exception v4

    goto :goto_8e

    :catch_88
    move-exception v4

    move-object v6, v0

    goto :goto_8e

    :catch_8b
    move-exception v4

    move-object v2, v0

    move-object v6, v2

    :goto_8e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load adapter for network "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/applovin/impl/mediation/debugger/a/d;->i:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". Please check that you have a compatible network SDK integrated. Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "MediatedNetwork"

    invoke-static {v7, v4}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    :cond_af
    iput-boolean v2, p0, Lcom/applovin/impl/mediation/debugger/a/d;->e:Z

    move-object v2, v0

    move-object v6, v2

    :goto_b3
    iput-object v2, p0, Lcom/applovin/impl/mediation/debugger/a/d;->m:Ljava/lang/String;

    iput-object v6, p0, Lcom/applovin/impl/mediation/debugger/a/d;->l:Ljava/lang/String;

    iput-object v3, p0, Lcom/applovin/impl/mediation/debugger/a/d;->p:Ljava/util/List;

    const/4 v3, 0x0

    const-string v4, "alternative_network"

    invoke-static {p1, v4, v3, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, v1, v0, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/r;->e(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->g:Z

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/a/d;->s()Lcom/applovin/impl/mediation/debugger/a/d$a;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->b:Lcom/applovin/impl/mediation/debugger/a/d$a;

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->n:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->f:Z

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applovin_ic_mediation_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/mediation/debugger/a/d;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "drawable"

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->o:I

    sget-object p1, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZED_UNKNOWN:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    invoke-virtual {p1}, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->c:I

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object p1

    const-string p2, "adapter_initialization_status"

    invoke-virtual {p1, p0, p2}, Lcom/applovin/communicator/AppLovinCommunicator;->subscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/applovin/mediation/adapter/MaxAdapter;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/mediation/adapter/MaxAdapter;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/mediation/MaxAdFormat;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    instance-of v1, p1, Lcom/applovin/mediation/adapter/MaxInterstitialAdapter;

    if-eqz v1, :cond_f

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    instance-of v1, p1, Lcom/applovin/mediation/adapter/MaxRewardedAdapter;

    if-eqz v1, :cond_18

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    instance-of v1, p1, Lcom/applovin/mediation/adapter/MaxRewardedInterstitialAdapter;

    if-eqz v1, :cond_21

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    instance-of p1, p1, Lcom/applovin/mediation/adapter/MaxAdViewAdapter;

    if-eqz p1, :cond_34

    sget-object p1, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/applovin/impl/sdk/j;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/a/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "permissions"

    invoke-static {p1, v2, v1, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    :try_start_1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/applovin/impl/mediation/debugger/a/f;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lcom/applovin/impl/mediation/debugger/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_30} :catch_31

    goto :goto_14

    :catch_31
    nop

    goto :goto_14

    :cond_33
    return-object v0
.end method

.method private b(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/applovin/impl/sdk/j;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/a/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "dependencies"

    invoke-static {p1, v2, v1, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    :goto_11
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_29

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, p2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONArray;ILorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_26

    new-instance v3, Lcom/applovin/impl/mediation/debugger/a/a;

    invoke-direct {v3, v2, p2}, Lcom/applovin/impl/mediation/debugger/a/a;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_29
    return-object v0
.end method

.method private s()Lcom/applovin/impl/mediation/debugger/a/d$a;
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->d:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->e:Z

    if-nez v0, :cond_b

    sget-object v0, Lcom/applovin/impl/mediation/debugger/a/d$a;->a:Lcom/applovin/impl/mediation/debugger/a/d$a;

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/mediation/debugger/a/f;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/f;->c()Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v0, Lcom/applovin/impl/mediation/debugger/a/d$a;->c:Lcom/applovin/impl/mediation/debugger/a/d$a;

    return-object v0

    :cond_26
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/mediation/debugger/a/a;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/a;->c()Z

    move-result v1

    if-nez v1, :cond_2c

    sget-object v0, Lcom/applovin/impl/mediation/debugger/a/d$a;->c:Lcom/applovin/impl/mediation/debugger/a/d$a;

    return-object v0

    :cond_41
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->s:Lcom/applovin/impl/mediation/debugger/a/e;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->s:Lcom/applovin/impl/mediation/debugger/a/e;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/a/e;->b()Z

    move-result v0

    if-nez v0, :cond_54

    sget-object v0, Lcom/applovin/impl/mediation/debugger/a/d$a;->c:Lcom/applovin/impl/mediation/debugger/a/d$a;

    return-object v0

    :cond_54
    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->d:Z

    if-eqz v0, :cond_66

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->e:Z

    if-eqz v0, :cond_5f

    sget-object v0, Lcom/applovin/impl/mediation/debugger/a/d$a;->d:Lcom/applovin/impl/mediation/debugger/a/d$a;

    return-object v0

    :cond_5f
    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->g:Z

    if-eqz v0, :cond_66

    sget-object v0, Lcom/applovin/impl/mediation/debugger/a/d$a;->a:Lcom/applovin/impl/mediation/debugger/a/d$a;

    return-object v0

    :cond_66
    sget-object v0, Lcom/applovin/impl/mediation/debugger/a/d$a;->b:Lcom/applovin/impl/mediation/debugger/a/d$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/mediation/debugger/a/d;)I
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->j:Ljava/lang/String;

    iget-object p1, p1, Lcom/applovin/impl/mediation/debugger/a/d;->j:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a()Lcom/applovin/impl/mediation/debugger/a/d$a;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->b:Lcom/applovin/impl/mediation/debugger/a/d$a;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->c:I

    return v0
.end method

.method public c()Lcom/applovin/impl/mediation/debugger/a/d$b;
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->b:Lcom/applovin/impl/mediation/debugger/a/d$a;

    sget-object v1, Lcom/applovin/impl/mediation/debugger/a/d$a;->c:Lcom/applovin/impl/mediation/debugger/a/d$a;

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/applovin/impl/mediation/debugger/a/d$b;->a:Lcom/applovin/impl/mediation/debugger/a/d$b;

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->D()Lcom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->a()Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/applovin/impl/mediation/debugger/a/d$b;->c:Lcom/applovin/impl/mediation/debugger/a/d$b;

    return-object v0

    :cond_18
    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->h:Z

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->c:I

    sget-object v1, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZED_FAILURE:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    invoke-virtual {v1}, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_30

    iget v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->c:I

    sget-object v1, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZING:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    invoke-virtual {v1}, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_33

    :cond_30
    sget-object v0, Lcom/applovin/impl/mediation/debugger/a/d$b;->b:Lcom/applovin/impl/mediation/debugger/a/d$b;

    return-object v0

    :cond_33
    sget-object v0, Lcom/applovin/impl/mediation/debugger/a/d$b;->d:Lcom/applovin/impl/mediation/debugger/a/d$b;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/debugger/a/d;->a(Lcom/applovin/impl/mediation/debugger/a/d;)I

    move-result p1

    return p1
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->d:Z

    return v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->e:Z

    return v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->f:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getCommunicatorId()Ljava/lang/String;
    .registers 2

    const-string v0, "MediatedNetwork"

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method public l()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->o:I

    return v0
.end method

.method public m()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/mediation/MaxAdFormat;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->p:Ljava/util/List;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/a/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->q:Ljava/util/List;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->r:Ljava/util/List;

    return-object v0
.end method

.method public onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .registers 5

    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "adapter_class"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "init_status"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->c:I

    :cond_21
    return-void
.end method

.method public final p()Lcom/applovin/impl/mediation/debugger/a/e;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->s:Lcom/applovin/impl/mediation/debugger/a/e;

    return-object v0
.end method

.method public final q()Lcom/applovin/impl/sdk/j;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/d;->a:Lcom/applovin/impl/sdk/j;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n------------------ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nStatus  - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->b:Lcom/applovin/impl/mediation/debugger/a/d$a;

    invoke-static {v1}, Lcom/applovin/impl/mediation/debugger/a/d$a;->a(Lcom/applovin/impl/mediation/debugger/a/d$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nSDK     - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->d:Z

    const-string v2, "UNAVAILABLE"

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->l:Ljava/lang/String;

    goto :goto_39

    :cond_38
    move-object v1, v2

    :goto_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nAdapter - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->e:Z

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    iget-object v2, p0, Lcom/applovin/impl/mediation/debugger/a/d;->m:Ljava/lang/String;

    :cond_4f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->s:Lcom/applovin/impl/mediation/debugger/a/e;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/e;->a()Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->s:Lcom/applovin/impl/mediation/debugger/a/e;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/e;->b()Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "\n* "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->s:Lcom/applovin/impl/mediation/debugger/a/e;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_70
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/a/d;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_78
    :goto_78
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ": "

    const-string v4, "\n* MISSING "

    if-eqz v2, :cond_a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/mediation/debugger/a/f;

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/debugger/a/f;->c()Z

    move-result v5

    if-nez v5, :cond_78

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/debugger/a/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/debugger/a/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    :cond_a3
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/a/d;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_ab
    :goto_ab
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/mediation/debugger/a/a;

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/debugger/a/a;->c()Z

    move-result v5

    if-nez v5, :cond_ab

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/debugger/a/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/debugger/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ab

    :cond_d2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediatedNetwork{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sdkAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adapterAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", adapterVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a/d;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
