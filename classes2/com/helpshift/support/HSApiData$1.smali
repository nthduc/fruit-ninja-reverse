.class Lcom/helpshift/support/HSApiData$1;
.super Ljava/lang/Object;
.source "HSApiData.java"

# interfaces
.implements Lcom/helpshift/util/FetchDataFromThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSApiData;->getAndStoreSections(Landroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/helpshift/util/FetchDataFromThread<",
        "Lcom/helpshift/faq/FaqsResponse;",
        "Lcom/helpshift/common/exception/ExceptionType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSApiData;

.field final synthetic val$callback:Landroid/os/Handler;

.field final synthetic val$failure:Landroid/os/Handler;

.field final synthetic val$faqTagFilter:Lcom/helpshift/support/FaqTagFilter;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;Landroid/os/Handler;)V
    .registers 5

    .line 129
    iput-object p1, p0, Lcom/helpshift/support/HSApiData$1;->this$0:Lcom/helpshift/support/HSApiData;

    iput-object p2, p0, Lcom/helpshift/support/HSApiData$1;->val$callback:Landroid/os/Handler;

    iput-object p3, p0, Lcom/helpshift/support/HSApiData$1;->val$faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

    iput-object p4, p0, Lcom/helpshift/support/HSApiData$1;->val$failure:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataFetched(Lcom/helpshift/faq/FaqsResponse;)V
    .registers 5

    .line 132
    iget-object v0, p0, Lcom/helpshift/support/HSApiData$1;->val$callback:Landroid/os/Handler;

    if-eqz v0, :cond_3f

    .line 133
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 134
    iget v2, p1, Lcom/helpshift/faq/FaqsResponse;->statusCode:I

    if-ne v1, v2, :cond_12

    .line 135
    sget v1, Lcom/helpshift/support/constants/GetSectionsCallBackStatus;->API_SUCCESS_NEW_DATA:I

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_1b

    :cond_12
    const/4 v1, 0x2

    .line 137
    iget v2, p1, Lcom/helpshift/faq/FaqsResponse;->statusCode:I

    if-ne v1, v2, :cond_1b

    .line 138
    sget v1, Lcom/helpshift/support/constants/GetSectionsCallBackStatus;->API_SUCCESS_NO_NEW_DATA:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 140
    :cond_1b
    :goto_1b
    iget-object p1, p1, Lcom/helpshift/faq/FaqsResponse;->response:Ljava/lang/Object;

    if-eqz p1, :cond_37

    .line 143
    check-cast p1, Lorg/json/JSONArray;

    .line 144
    iget-object v1, p0, Lcom/helpshift/support/HSApiData$1;->this$0:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v1, p1}, Lcom/helpshift/support/HSApiData;->storeSections(Lorg/json/JSONArray;)V

    .line 145
    iget-object p1, p0, Lcom/helpshift/support/HSApiData$1;->this$0:Lcom/helpshift/support/HSApiData;

    iget-object p1, p1, Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;

    iget-object v1, p0, Lcom/helpshift/support/HSApiData$1;->val$faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

    invoke-interface {p1, v1}, Lcom/helpshift/support/storage/SectionDAO;->getAllSections(Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    iget-object p1, p0, Lcom/helpshift/support/HSApiData$1;->this$0:Lcom/helpshift/support/HSApiData;

    invoke-virtual {p1}, Lcom/helpshift/support/HSApiData;->startSearchIndexing()V

    .line 148
    :cond_37
    iget-object p1, p0, Lcom/helpshift/support/HSApiData$1;->val$callback:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 149
    invoke-static {}, Lcom/helpshift/support/HSApiData;->signalFaqsUpdated()V

    :cond_3f
    return-void
.end method

.method public bridge synthetic onDataFetched(Ljava/lang/Object;)V
    .registers 2

    .line 129
    check-cast p1, Lcom/helpshift/faq/FaqsResponse;

    invoke-virtual {p0, p1}, Lcom/helpshift/support/HSApiData$1;->onDataFetched(Lcom/helpshift/faq/FaqsResponse;)V

    return-void
.end method

.method public onFailure(Lcom/helpshift/common/exception/ExceptionType;)V
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/helpshift/support/HSApiData$1;->val$failure:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    .line 157
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 158
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->CONTENT_UNCHANGED:Lcom/helpshift/common/exception/NetworkException;

    if-ne p1, v1, :cond_11

    .line 161
    sget p1, Lcom/helpshift/support/constants/GetSectionsCallBackStatus;->API_FAILURE_CONTENT_UNCHANGED:I

    goto :goto_13

    .line 163
    :cond_11
    sget p1, Lcom/helpshift/support/constants/GetSectionsCallBackStatus;->API_FAILURE:I

    .line 165
    :goto_13
    iput p1, v0, Landroid/os/Message;->what:I

    .line 166
    iget-object p1, p0, Lcom/helpshift/support/HSApiData$1;->val$failure:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1a
    return-void
.end method

.method public bridge synthetic onFailure(Ljava/lang/Object;)V
    .registers 2

    .line 129
    check-cast p1, Lcom/helpshift/common/exception/ExceptionType;

    invoke-virtual {p0, p1}, Lcom/helpshift/support/HSApiData$1;->onFailure(Lcom/helpshift/common/exception/ExceptionType;)V

    return-void
.end method
