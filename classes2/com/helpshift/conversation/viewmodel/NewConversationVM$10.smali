.class Lcom/helpshift/conversation/viewmodel/NewConversationVM$10;
.super Lcom/helpshift/common/domain/F;
.source "NewConversationVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/viewmodel/NewConversationVM;->setImageAttachment(Lcom/helpshift/conversation/dto/AttachmentPickerFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/conversation/viewmodel/NewConversationVM;

.field final synthetic val$attachmentPickerFile:Lcom/helpshift/conversation/dto/AttachmentPickerFile;


# direct methods
.method constructor <init>(Lcom/helpshift/conversation/viewmodel/NewConversationVM;Lcom/helpshift/conversation/dto/AttachmentPickerFile;)V
    .registers 3

    .line 336
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM$10;->this$0:Lcom/helpshift/conversation/viewmodel/NewConversationVM;

    iput-object p2, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM$10;->val$attachmentPickerFile:Lcom/helpshift/conversation/dto/AttachmentPickerFile;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 3

    .line 339
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM$10;->this$0:Lcom/helpshift/conversation/viewmodel/NewConversationVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->imageAttachmentViewState:Lcom/helpshift/widget/MutableImageAttachmentViewState;

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM$10;->val$attachmentPickerFile:Lcom/helpshift/conversation/dto/AttachmentPickerFile;

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableImageAttachmentViewState;->setAttachmentPickerFile(Lcom/helpshift/conversation/dto/AttachmentPickerFile;)V

    .line 340
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM$10;->this$0:Lcom/helpshift/conversation/viewmodel/NewConversationVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->widgetGateway:Lcom/helpshift/widget/WidgetGateway;

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM$10;->this$0:Lcom/helpshift/conversation/viewmodel/NewConversationVM;

    iget-object v1, v1, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->imageAttachmentViewState:Lcom/helpshift/widget/MutableImageAttachmentViewState;

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/WidgetGateway;->save(Lcom/helpshift/widget/MutableImageAttachmentViewState;)V

    .line 341
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM$10;->this$0:Lcom/helpshift/conversation/viewmodel/NewConversationVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->progressBarViewState:Lcom/helpshift/widget/MutableBaseViewState;

    invoke-virtual {v0}, Lcom/helpshift/widget/MutableBaseViewState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 342
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM$10;->this$0:Lcom/helpshift/conversation/viewmodel/NewConversationVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->attachImageButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    goto :goto_3a

    .line 345
    :cond_27
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM$10;->this$0:Lcom/helpshift/conversation/viewmodel/NewConversationVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->attachImageButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM$10;->this$0:Lcom/helpshift/conversation/viewmodel/NewConversationVM;

    iget-object v1, v1, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->imageAttachmentViewState:Lcom/helpshift/widget/MutableImageAttachmentViewState;

    invoke-virtual {v1}, Lcom/helpshift/widget/MutableImageAttachmentViewState;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    :goto_3a
    return-void
.end method
