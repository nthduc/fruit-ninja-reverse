.class Lcom/ironsource/mediationsdk/MediationInitializer$2;
.super Ljava/lang/Object;
.source "MediationInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/MediationInitializer;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/MediationInitializer;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/MediationInitializer;)V
    .registers 2

    .line 270
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$2;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 273
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$2;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    new-instance v7, Lcom/ironsource/mediationsdk/MediationInitializer$2$1;

    const-wide/32 v3, 0xea60

    const-wide/16 v5, 0x3a98

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/mediationsdk/MediationInitializer$2$1;-><init>(Lcom/ironsource/mediationsdk/MediationInitializer$2;JJ)V

    .line 294
    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/MediationInitializer$2$1;->start()Landroid/os/CountDownTimer;

    move-result-object v1

    .line 273
    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mCountDownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$2002(Lcom/ironsource/mediationsdk/MediationInitializer;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    return-void
.end method
