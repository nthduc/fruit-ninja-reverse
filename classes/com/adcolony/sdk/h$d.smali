.class Lcom/adcolony/sdk/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/AdColonyAppOptions;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/h;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/h$d;->a:Lcom/adcolony/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/adcolony/sdk/h$d;->a:Lcom/adcolony/sdk/h;

    invoke-static {v1}, Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/h;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_32

    if-eqz v0, :cond_32

    .line 4
    :try_start_f
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iab/omid/library/adcolony/Omid;->activate(Landroid/content/Context;)V

    .line 5
    iget-object v0, p0, Lcom/adcolony/sdk/h$d;->a:Lcom/adcolony/sdk/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/h;Z)Z
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_1c} :catch_1d

    goto :goto_32

    .line 7
    :catch_1d
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v1, "IllegalArgumentException when activating Omid"

    .line 8
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 9
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 10
    iget-object v0, p0, Lcom/adcolony/sdk/h$d;->a:Lcom/adcolony/sdk/h;

    invoke-static {v0, v2}, Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/h;Z)Z

    .line 15
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/adcolony/sdk/h$d;->a:Lcom/adcolony/sdk/h;

    invoke-static {v0}, Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/h;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/adcolony/sdk/h$d;->a:Lcom/adcolony/sdk/h;

    invoke-static {v0}, Lcom/adcolony/sdk/h;->b(Lcom/adcolony/sdk/h;)Lcom/iab/omid/library/adcolony/adsession/Partner;

    move-result-object v0

    if-nez v0, :cond_65

    .line 17
    :try_start_42
    iget-object v0, p0, Lcom/adcolony/sdk/h$d;->a:Lcom/adcolony/sdk/h;

    const-string v1, "AdColony"

    const-string v3, "4.2.4"

    invoke-static {v1, v3}, Lcom/iab/omid/library/adcolony/adsession/Partner;->createPartner(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/adcolony/adsession/Partner;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/h;Lcom/iab/omid/library/adcolony/adsession/Partner;)Lcom/iab/omid/library/adcolony/adsession/Partner;
    :try_end_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_4f} :catch_50

    goto :goto_65

    .line 19
    :catch_50
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v1, "IllegalArgumentException when creating Omid Partner"

    .line 20
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 21
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 22
    iget-object v0, p0, Lcom/adcolony/sdk/h$d;->a:Lcom/adcolony/sdk/h;

    invoke-static {v0, v2}, Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/h;Z)Z

    :cond_65
    :goto_65
    return-void
.end method
