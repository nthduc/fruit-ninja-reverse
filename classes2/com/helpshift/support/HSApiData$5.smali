.class Lcom/helpshift/support/HSApiData$5;
.super Ljava/lang/Object;
.source "HSApiData.java"

# interfaces
.implements Lcom/helpshift/util/FetchDataFromThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSApiData;->getQuestionAsync(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/helpshift/util/FetchDataFromThread<",
        "Lcom/helpshift/faq/FaqCore;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSApiData;

.field final synthetic val$failure:Landroid/os/Handler;

.field final synthetic val$isAdminSuggested:Z

.field final synthetic val$publishId:Ljava/lang/String;

.field final synthetic val$success:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;ZLandroid/os/Handler;Ljava/lang/String;)V
    .registers 6

    .line 557
    iput-object p1, p0, Lcom/helpshift/support/HSApiData$5;->this$0:Lcom/helpshift/support/HSApiData;

    iput-object p2, p0, Lcom/helpshift/support/HSApiData$5;->val$success:Landroid/os/Handler;

    iput-boolean p3, p0, Lcom/helpshift/support/HSApiData$5;->val$isAdminSuggested:Z

    iput-object p4, p0, Lcom/helpshift/support/HSApiData$5;->val$failure:Landroid/os/Handler;

    iput-object p5, p0, Lcom/helpshift/support/HSApiData$5;->val$publishId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataFetched(Lcom/helpshift/faq/FaqCore;)V
    .registers 6

    .line 560
    iget-object v0, p0, Lcom/helpshift/support/HSApiData$5;->val$success:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 561
    new-instance v1, Lcom/helpshift/support/Faq;

    iget-object v2, p0, Lcom/helpshift/support/HSApiData$5;->this$0:Lcom/helpshift/support/HSApiData;

    iget-object v3, p1, Lcom/helpshift/faq/FaqCore;->section_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/helpshift/support/HSApiData;->getPublishIdFromSectionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/helpshift/support/Faq;-><init>(Lcom/helpshift/faq/FaqCore;Ljava/lang/String;)V

    .line 562
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 563
    iget-object p1, p0, Lcom/helpshift/support/HSApiData$5;->val$success:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 565
    iget-boolean p1, p0, Lcom/helpshift/support/HSApiData$5;->val$isAdminSuggested:Z

    if-eqz p1, :cond_2a

    .line 566
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getPlatform()Lcom/helpshift/common/platform/Platform;

    move-result-object p1

    invoke-interface {p1}, Lcom/helpshift/common/platform/Platform;->getFAQSuggestionsDAO()Lcom/helpshift/conversation/dao/FAQSuggestionsDAO;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/helpshift/conversation/dao/FAQSuggestionsDAO;->insertOrUpdateFAQ(Ljava/lang/Object;)V

    goto :goto_31

    .line 569
    :cond_2a
    iget-object p1, p0, Lcom/helpshift/support/HSApiData$5;->this$0:Lcom/helpshift/support/HSApiData;

    iget-object p1, p1, Lcom/helpshift/support/HSApiData;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;

    invoke-interface {p1, v1}, Lcom/helpshift/support/storage/FaqDAO;->addFaq(Lcom/helpshift/support/Faq;)V

    :goto_31
    return-void
.end method

.method public bridge synthetic onDataFetched(Ljava/lang/Object;)V
    .registers 2

    .line 557
    check-cast p1, Lcom/helpshift/faq/FaqCore;

    invoke-virtual {p0, p1}, Lcom/helpshift/support/HSApiData$5;->onDataFetched(Lcom/helpshift/faq/FaqCore;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Integer;)V
    .registers 6

    .line 575
    iget-object v0, p0, Lcom/helpshift/support/HSApiData$5;->val$failure:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 576
    sget-object v1, Lcom/helpshift/common/domain/network/NetworkErrorCodes;->FORBIDDEN_ACCESS:Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    sget-object v1, Lcom/helpshift/common/domain/network/NetworkErrorCodes;->CONTENT_NOT_FOUND:Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 578
    :cond_16
    iget-boolean v1, p0, Lcom/helpshift/support/HSApiData$5;->val$isAdminSuggested:Z

    if-nez v1, :cond_23

    .line 579
    iget-object v1, p0, Lcom/helpshift/support/HSApiData$5;->this$0:Lcom/helpshift/support/HSApiData;

    iget-object v1, v1, Lcom/helpshift/support/HSApiData;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;

    iget-object v2, p0, Lcom/helpshift/support/HSApiData$5;->val$publishId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/helpshift/support/storage/FaqDAO;->removeFaq(Ljava/lang/String;)V

    .line 581
    :cond_23
    invoke-static {}, Lcom/helpshift/model/InfoModelFactory;->getInstance()Lcom/helpshift/model/InfoModelFactory;

    move-result-object v1

    iget-object v1, v1, Lcom/helpshift/model/InfoModelFactory;->sdkInfoModel:Lcom/helpshift/model/SdkInfoModel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/faqs/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/helpshift/support/HSApiData$5;->val$publishId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/helpshift/model/SdkInfoModel;->clearEtag(Ljava/lang/String;)V

    .line 583
    :cond_44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "status"

    .line 584
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 586
    iget-object p1, p0, Lcom/helpshift/support/HSApiData$5;->val$failure:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public bridge synthetic onFailure(Ljava/lang/Object;)V
    .registers 2

    .line 557
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/helpshift/support/HSApiData$5;->onFailure(Ljava/lang/Integer;)V

    return-void
.end method
