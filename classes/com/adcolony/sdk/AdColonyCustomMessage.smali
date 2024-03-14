.class public Lcom/adcolony/sdk/AdColonyCustomMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/adcolony/sdk/k0;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p2}, Lcom/adcolony/sdk/k0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3
    :cond_f
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyCustomMessage;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/adcolony/sdk/AdColonyCustomMessage;->b:Ljava/lang/String;

    :cond_13
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/AdColonyCustomMessage;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/adcolony/sdk/AdColonyCustomMessage;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/adcolony/sdk/AdColonyCustomMessage;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/adcolony/sdk/AdColonyCustomMessage;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyCustomMessage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyCustomMessage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public send()V
    .registers 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/adcolony/sdk/AdColonyCustomMessage$a;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/AdColonyCustomMessage$a;-><init>(Lcom/adcolony/sdk/AdColonyCustomMessage;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyCustomMessage;
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyCustomMessage;->a:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/adcolony/sdk/AdColonyCustomMessage;->b:Ljava/lang/String;

    return-object p0
.end method
