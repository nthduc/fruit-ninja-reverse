.class Lcom/helpshift/support/conversations/NewConversationFragment$11;
.super Lcom/helpshift/support/conversations/TextWatcherAdapter;
.source "NewConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/conversations/NewConversationFragment;->initialize(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/conversations/NewConversationFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/support/conversations/NewConversationFragment;)V
    .registers 2

    .line 307
    iput-object p1, p0, Lcom/helpshift/support/conversations/NewConversationFragment$11;->this$0:Lcom/helpshift/support/conversations/NewConversationFragment;

    invoke-direct {p0}, Lcom/helpshift/support/conversations/TextWatcherAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 310
    iget-object p2, p0, Lcom/helpshift/support/conversations/NewConversationFragment$11;->this$0:Lcom/helpshift/support/conversations/NewConversationFragment;

    iget-object p2, p2, Lcom/helpshift/support/conversations/NewConversationFragment;->newConversationVM:Lcom/helpshift/conversation/viewmodel/NewConversationVM;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->setEmail(Ljava/lang/String;)V

    return-void
.end method
