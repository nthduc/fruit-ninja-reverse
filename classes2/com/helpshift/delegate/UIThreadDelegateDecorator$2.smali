.class Lcom/helpshift/delegate/UIThreadDelegateDecorator$2;
.super Lcom/helpshift/common/domain/F;
.source "UIThreadDelegateDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/delegate/UIThreadDelegateDecorator;->sessionEnded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/delegate/UIThreadDelegateDecorator;


# direct methods
.method constructor <init>(Lcom/helpshift/delegate/UIThreadDelegateDecorator;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/helpshift/delegate/UIThreadDelegateDecorator$2;->this$0:Lcom/helpshift/delegate/UIThreadDelegateDecorator;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/helpshift/delegate/UIThreadDelegateDecorator$2;->this$0:Lcom/helpshift/delegate/UIThreadDelegateDecorator;

    # getter for: Lcom/helpshift/delegate/UIThreadDelegateDecorator;->delegate:Lcom/helpshift/delegate/RootDelegate;
    invoke-static {v0}, Lcom/helpshift/delegate/UIThreadDelegateDecorator;->access$000(Lcom/helpshift/delegate/UIThreadDelegateDecorator;)Lcom/helpshift/delegate/RootDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/delegate/RootDelegate;->sessionEnded()V

    return-void
.end method
