.class Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM$2;
.super Ljava/lang/Object;
.source "ScreenshotMessageDM.java"

# interfaces
.implements Lcom/helpshift/downloader/SupportDownloadStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->checkAndReDownloadImageIfNotExist(Lcom/helpshift/common/platform/Platform;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

.field final synthetic val$platform:Lcom/helpshift/common/platform/Platform;


# direct methods
.method constructor <init>(Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;Lcom/helpshift/common/platform/Platform;)V
    .registers 3

    .line 214
    iput-object p1, p0, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM$2;->this$0:Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    iput-object p2, p0, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM$2;->val$platform:Lcom/helpshift/common/platform/Platform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public onProgressChange(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 221
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM$2;->this$0:Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    # setter for: Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;->filePath:Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->access$103(Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM$2;->val$platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {p1}, Lcom/helpshift/common/platform/Platform;->getConversationDAO()Lcom/helpshift/conversation/dao/ConversationDAO;

    move-result-object p1

    iget-object p2, p0, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM$2;->this$0:Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    invoke-interface {p1, p2}, Lcom/helpshift/conversation/dao/ConversationDAO;->insertOrUpdateMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 223
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM$2;->this$0:Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->notifyUpdated()V

    return-void
.end method
