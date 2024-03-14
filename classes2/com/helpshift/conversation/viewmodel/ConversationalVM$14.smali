.class Lcom/helpshift/conversation/viewmodel/ConversationalVM$14;
.super Lcom/helpshift/common/domain/F;
.source "ConversationalVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/viewmodel/ConversationalVM;->hideListPicker(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

.field final synthetic val$hideSmoothly:Z


# direct methods
.method constructor <init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Z)V
    .registers 3

    .line 1163
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$14;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iput-boolean p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$14;->val$hideSmoothly:Z

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 3

    .line 1166
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$14;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    if-eqz v0, :cond_f

    .line 1167
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$14;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    iget-boolean v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$14;->val$hideSmoothly:Z

    invoke-interface {v0, v1}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->hideListPicker(Z)V

    :cond_f
    return-void
.end method
