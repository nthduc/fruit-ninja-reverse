.class Lcom/helpshift/delegate/UIThreadDelegateDecorator$3;
.super Lcom/helpshift/common/domain/F;
.source "UIThreadDelegateDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/delegate/UIThreadDelegateDecorator;->newConversationStarted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/delegate/UIThreadDelegateDecorator;

.field final synthetic val$newConversationMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/helpshift/delegate/UIThreadDelegateDecorator;Ljava/lang/String;)V
    .registers 3

    .line 47
    iput-object p1, p0, Lcom/helpshift/delegate/UIThreadDelegateDecorator$3;->this$0:Lcom/helpshift/delegate/UIThreadDelegateDecorator;

    iput-object p2, p0, Lcom/helpshift/delegate/UIThreadDelegateDecorator$3;->val$newConversationMessage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/helpshift/delegate/UIThreadDelegateDecorator$3;->this$0:Lcom/helpshift/delegate/UIThreadDelegateDecorator;

    # getter for: Lcom/helpshift/delegate/UIThreadDelegateDecorator;->delegate:Lcom/helpshift/delegate/RootDelegate;
    invoke-static {v0}, Lcom/helpshift/delegate/UIThreadDelegateDecorator;->access$000(Lcom/helpshift/delegate/UIThreadDelegateDecorator;)Lcom/helpshift/delegate/RootDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/delegate/UIThreadDelegateDecorator$3;->val$newConversationMessage:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/helpshift/delegate/RootDelegate;->newConversationStarted(Ljava/lang/String;)V

    return-void
.end method
