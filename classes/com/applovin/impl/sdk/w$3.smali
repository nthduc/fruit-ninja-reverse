.class Lcom/applovin/impl/sdk/w$3;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/w;-><init>(Lcom/applovin/impl/sdk/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/w;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/w;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/w$3;->a:Lcom/applovin/impl/sdk/w;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-static {}, Lcom/applovin/impl/sdk/utils/r;->c()Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/applovin/impl/sdk/w$3;->a:Lcom/applovin/impl/sdk/w;

    invoke-static {p1}, Lcom/applovin/impl/sdk/w;->a(Lcom/applovin/impl/sdk/w;)V

    goto :goto_25

    :cond_18
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/applovin/impl/sdk/w$3;->a:Lcom/applovin/impl/sdk/w;

    invoke-static {p1}, Lcom/applovin/impl/sdk/w;->b(Lcom/applovin/impl/sdk/w;)V

    :cond_25
    :goto_25
    return-void
.end method
