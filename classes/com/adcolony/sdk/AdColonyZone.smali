.class public Lcom/adcolony/sdk/AdColonyZone;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BANNER:I = 0x1

.field public static final INTERSTITIAL:I = 0x0

.field public static final NATIVE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final l:I = 0x0

.field static final m:I = 0x1

.field static final n:I = 0x5

.field static final o:I = 0x6


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/adcolony/sdk/AdColonyZone;->c:I

    .line 17
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyZone;->a:Ljava/lang/String;

    return-void
.end method

.method private a(I)I
    .registers 3

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->A()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->B()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    return p1

    .line 3
    :cond_1c
    :goto_1c
    invoke-direct {p0}, Lcom/adcolony/sdk/AdColonyZone;->c()V

    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/adcolony/sdk/AdColonyZone;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 8
    invoke-static {}, Lcom/adcolony/sdk/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->A()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 9
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->B()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    return-object p1

    .line 10
    :cond_1c
    :goto_1c
    invoke-direct {p0}, Lcom/adcolony/sdk/AdColonyZone;->c()V

    return-object p2
.end method

.method private a(Z)Z
    .registers 3

    .line 4
    invoke-static {}, Lcom/adcolony/sdk/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->A()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 5
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->B()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    return p1

    .line 6
    :cond_1c
    :goto_1c
    invoke-direct {p0}, Lcom/adcolony/sdk/AdColonyZone;->c()V

    const/4 p1, 0x0

    return p1
.end method

.method private c()V
    .registers 3

    .line 2
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v1, "The AdColonyZone API is not available while AdColony is disabled."

    .line 3
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/u;->i:Lcom/adcolony/sdk/u;

    .line 4
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/adcolony/sdk/AdColonyZone;->i:I

    return v0
.end method

.method a(Lcom/adcolony/sdk/x;)V
    .registers 4

    .line 11
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "reward"

    .line 12
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "reward_name"

    .line 13
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/AdColonyZone;->b:Ljava/lang/String;

    const-string v1, "reward_amount"

    .line 14
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/AdColonyZone;->h:I

    const-string v1, "views_per_reward"

    .line 15
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/AdColonyZone;->f:I

    const-string v1, "views_until_reward"

    .line 16
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/AdColonyZone;->e:I

    const-string v0, "rewarded"

    .line 17
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adcolony/sdk/AdColonyZone;->k:Z

    const-string v0, "status"

    .line 18
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/AdColonyZone;->c:I

    const-string v0, "type"

    .line 19
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/AdColonyZone;->d:I

    const-string v0, "play_interval"

    .line 20
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/AdColonyZone;->g:I

    const-string v0, "zone_id"

    .line 21
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyZone;->a:Ljava/lang/String;

    .line 22
    iget p1, p0, Lcom/adcolony/sdk/AdColonyZone;->c:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_58

    goto :goto_59

    :cond_58
    const/4 v0, 0x0

    :goto_59
    iput-boolean v0, p0, Lcom/adcolony/sdk/AdColonyZone;->j:Z

    return-void
.end method

.method b(I)V
    .registers 2

    .line 2
    iput p1, p0, Lcom/adcolony/sdk/AdColonyZone;->i:I

    return-void
.end method

.method b()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/adcolony/sdk/AdColonyZone;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method c(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/adcolony/sdk/AdColonyZone;->c:I

    return-void
.end method

.method public getPlayFrequency()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/adcolony/sdk/AdColonyZone;->g:I

    invoke-direct {p0, v0}, Lcom/adcolony/sdk/AdColonyZone;->a(I)I

    move-result v0

    return v0
.end method

.method public getRemainingViewsUntilReward()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/adcolony/sdk/AdColonyZone;->e:I

    invoke-direct {p0, v0}, Lcom/adcolony/sdk/AdColonyZone;->a(I)I

    move-result v0

    return v0
.end method

.method public getRewardAmount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/adcolony/sdk/AdColonyZone;->h:I

    invoke-direct {p0, v0}, Lcom/adcolony/sdk/AdColonyZone;->a(I)I

    move-result v0

    return v0
.end method

.method public getRewardName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyZone;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adcolony/sdk/AdColonyZone;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewsPerReward()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/adcolony/sdk/AdColonyZone;->f:I

    invoke-direct {p0, v0}, Lcom/adcolony/sdk/AdColonyZone;->a(I)I

    move-result v0

    return v0
.end method

.method public getZoneID()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyZone;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adcolony/sdk/AdColonyZone;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoneType()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/adcolony/sdk/AdColonyZone;->d:I

    return v0
.end method

.method public isRewarded()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyZone;->k:Z

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyZone;->j:Z

    invoke-direct {p0, v0}, Lcom/adcolony/sdk/AdColonyZone;->a(Z)Z

    move-result v0

    return v0
.end method
