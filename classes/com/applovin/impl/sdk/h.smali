.class Lcom/applovin/impl/sdk/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/h$a;
    }
.end annotation


# static fields
.field private static b:Landroid/app/AlertDialog;

.field private static final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/i;

.field private d:Lcom/applovin/impl/sdk/utils/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>(Lcom/applovin/impl/sdk/i;Lcom/applovin/impl/sdk/j;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/h;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->ag()Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.applovin.application_paused"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->ag()Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "com.applovin.application_resumed"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method static synthetic a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 1

    sput-object p0, Lcom/applovin/impl/sdk/h;->b:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/h;)Lcom/applovin/impl/sdk/i;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/h;->a:Lcom/applovin/impl/sdk/i;

    return-object p0
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Lcom/applovin/impl/sdk/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b()Landroid/app/AlertDialog;
    .registers 1

    sget-object v0, Lcom/applovin/impl/sdk/h;->b:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public a(JLcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/h$a;)V
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    return-void

    :cond_7
    sget-object v0, Lcom/applovin/impl/sdk/h;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    :cond_12
    sget-object v0, Lcom/applovin/impl/sdk/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const-string v1, " milliseconds"

    const-string v2, "ConsentAlertManager"

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/applovin/impl/sdk/h;->d:Lcom/applovin/impl/sdk/utils/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/p;->a()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-gez v0, :cond_5a

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling consent alert earlier ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms) than remaining scheduled time ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/applovin/impl/sdk/h;->d:Lcom/applovin/impl/sdk/utils/p;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/utils/p;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/h;->d:Lcom/applovin/impl/sdk/utils/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/p;->d()V

    goto :goto_7c

    :cond_5a
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Skip scheduling consent alert - one scheduled already with remaining time of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/applovin/impl/sdk/h;->d:Lcom/applovin/impl/sdk/utils/p;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/utils/p;->a()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7c
    :goto_7c
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling consent alert for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/impl/sdk/h$1;

    invoke-direct {v0, p0, p3, p4}, Lcom/applovin/impl/sdk/h$1;-><init>(Lcom/applovin/impl/sdk/h;Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/h$a;)V

    invoke-static {p1, p2, p3, v0}, Lcom/applovin/impl/sdk/utils/p;->a(JLcom/applovin/impl/sdk/j;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/p;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/h;->d:Lcom/applovin/impl/sdk/utils/p;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Ljava/util/Map;)V
    .registers 4
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/applovin/impl/sdk/h;->d:Lcom/applovin/impl/sdk/utils/p;

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.applovin.application_paused"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    iget-object p1, p0, Lcom/applovin/impl/sdk/h;->d:Lcom/applovin/impl/sdk/utils/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/utils/p;->b()V

    goto :goto_24

    :cond_17
    const-string p2, "com.applovin.application_resumed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/applovin/impl/sdk/h;->d:Lcom/applovin/impl/sdk/utils/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/utils/p;->c()V

    :cond_24
    :goto_24
    return-void
.end method
