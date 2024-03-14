.class public Lcom/helpshift/conversation/viewmodel/ConversationalVM;
.super Ljava/lang/Object;
.source "ConversationalVM.java"

# interfaces
.implements Lcom/helpshift/conversation/domainmodel/ConversationController$StartNewConversationListener;
.implements Lcom/helpshift/conversation/viewmodel/ListPickerVMCallback;
.implements Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;
.implements Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;
.implements Lcom/helpshift/account/AuthenticationFailureDM$AuthenticationFailureObserver;
.implements Lcom/helpshift/conversation/viewmodel/SmartIntentVMCallback;


# static fields
.field public static final CREATE_NEW_PRE_ISSUE:Ljava/lang/String; = "create_new_pre_issue"

.field public static final NO_NETWORK_ERROR:I = 0x1

.field public static final POLL_FAILURE_ERROR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Helpshift_ConvsatnlVM"


# instance fields
.field attachImageButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

.field awaitingUserInputForBotStep:Z

.field private botMessageDM:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

.field confirmationBoxViewState:Lcom/helpshift/widget/MutableBaseViewState;

.field final conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

.field conversationFooterViewState:Lcom/helpshift/widget/MutableConversationFooterViewState;

.field conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

.field domain:Lcom/helpshift/common/domain/Domain;

.field historyLoadingViewState:Lcom/helpshift/widget/MutableHistoryLoadingViewState;

.field protected isConversationRejected:Z

.field isInBetweenBotExecution:Z

.field isNetworkAvailable:Z

.field private isScreenCurrentlyVisible:Z

.field isShowingPollFailureError:Z

.field isUserReplyDraftClearedForBotChange:Z

.field private listPickerVM:Lcom/helpshift/conversation/viewmodel/ListPickerVM;

.field messageListVM:Lcom/helpshift/conversation/viewmodel/MessageListVM;

.field messageToAvatarTriggeredMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field platform:Lcom/helpshift/common/platform/Platform;

.field renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

.field replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

.field replyButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

.field replyFieldViewState:Lcom/helpshift/widget/MutableReplyFieldViewState;

.field private retainMessageBoxOnUI:Z

.field scrollJumperViewState:Lcom/helpshift/widget/MutableScrollJumperViewState;

.field final sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

.field private showConversationHistory:Z

.field private smartIntentDM:Lcom/helpshift/conversation/smartintent/SmartIntentDM;

.field private smartIntentVM:Lcom/helpshift/conversation/viewmodel/SmartIntentVM;

.field public final viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

.field widgetGateway:Lcom/helpshift/widget/WidgetGateway;


# direct methods
.method public constructor <init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/conversation/domainmodel/ConversationController;Lcom/helpshift/conversation/activeconversation/ViewableConversation;Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;ZZ)V
    .registers 16

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isNetworkAvailable:Z

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->messageToAvatarTriggeredMap:Ljava/util/Map;

    .line 176
    iput-object p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    .line 177
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->platform:Lcom/helpshift/common/platform/Platform;

    .line 178
    iput-object p3, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    .line 179
    iput-object p4, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    .line 180
    invoke-virtual {p2}, Lcom/helpshift/common/domain/Domain;->getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    .line 181
    iput-boolean p7, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->retainMessageBoxOnUI:Z

    .line 182
    iget-object p7, p3, Lcom/helpshift/conversation/domainmodel/ConversationController;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iput-object p7, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    .line 183
    invoke-virtual {p2}, Lcom/helpshift/common/domain/Domain;->getAuthenticationFailureDM()Lcom/helpshift/account/AuthenticationFailureDM;

    move-result-object p7

    invoke-virtual {p7, p0}, Lcom/helpshift/account/AuthenticationFailureDM;->registerListener(Lcom/helpshift/account/AuthenticationFailureDM$AuthenticationFailureObserver;)V

    .line 185
    new-instance p7, Lcom/helpshift/widget/WidgetGateway;

    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-direct {p7, v0, p3}, Lcom/helpshift/widget/WidgetGateway;-><init>(Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;Lcom/helpshift/conversation/domainmodel/ConversationController;)V

    iput-object p7, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->widgetGateway:Lcom/helpshift/widget/WidgetGateway;

    .line 186
    invoke-virtual {p4}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object p7

    .line 189
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v0, p7}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateConversationExpiryProperties(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 192
    invoke-virtual {p2}, Lcom/helpshift/common/domain/Domain;->getUserManagerDM()Lcom/helpshift/account/domainmodel/UserManagerDM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserManagerDM;->getActiveUser()Lcom/helpshift/account/domainmodel/UserDM;

    move-result-object v5

    .line 193
    invoke-virtual {p2}, Lcom/helpshift/common/domain/Domain;->getSmartIntentDM()Lcom/helpshift/conversation/smartintent/SmartIntentDM;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentDM:Lcom/helpshift/conversation/smartintent/SmartIntentDM;

    .line 194
    new-instance v0, Lcom/helpshift/conversation/viewmodel/SmartIntentVM;

    iget-object v4, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentDM:Lcom/helpshift/conversation/smartintent/SmartIntentDM;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p7

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/helpshift/conversation/viewmodel/SmartIntentVM;-><init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/conversation/smartintent/SmartIntentDM;Lcom/helpshift/account/domainmodel/UserDM;Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/viewmodel/SmartIntentVMCallback;)V

    iput-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentVM:Lcom/helpshift/conversation/viewmodel/SmartIntentVM;

    .line 197
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->widgetGateway:Lcom/helpshift/widget/WidgetGateway;

    invoke-virtual {p1}, Lcom/helpshift/widget/WidgetGateway;->makeReplyFieldViewState()Lcom/helpshift/widget/MutableReplyFieldViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyFieldViewState:Lcom/helpshift/widget/MutableReplyFieldViewState;

    .line 198
    new-instance p1, Lcom/helpshift/widget/MutableHistoryLoadingViewState;

    invoke-direct {p1}, Lcom/helpshift/widget/MutableHistoryLoadingViewState;-><init>()V

    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->historyLoadingViewState:Lcom/helpshift/widget/MutableHistoryLoadingViewState;

    .line 199
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->widgetGateway:Lcom/helpshift/widget/WidgetGateway;

    invoke-virtual {p1}, Lcom/helpshift/widget/WidgetGateway;->makeScrollJumperViewState()Lcom/helpshift/widget/MutableScrollJumperViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->scrollJumperViewState:Lcom/helpshift/widget/MutableScrollJumperViewState;

    .line 200
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->shouldShowReplyBoxOnConversationRejected()Z

    move-result p1

    .line 201
    iget-object p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    .line 202
    invoke-virtual {p2, p7, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->setEnableMessageClickOnResolutionRejected(Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)V

    .line 203
    iget-object p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->widgetGateway:Lcom/helpshift/widget/WidgetGateway;

    .line 204
    invoke-virtual {p2, p7, p1}, Lcom/helpshift/widget/WidgetGateway;->makeConversationFooterViewState(Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)Lcom/helpshift/widget/MutableConversationFooterViewState;

    move-result-object p2

    iput-object p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationFooterViewState:Lcom/helpshift/widget/MutableConversationFooterViewState;

    .line 208
    iget-object p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->widgetGateway:Lcom/helpshift/widget/WidgetGateway;

    .line 209
    invoke-virtual {p4}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/helpshift/widget/WidgetGateway;->makeAttachImageButtonViewState(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Lcom/helpshift/widget/MutableBaseViewState;

    move-result-object p2

    iput-object p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->attachImageButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    .line 211
    new-instance p2, Lcom/helpshift/widget/MutableBaseViewState;

    invoke-direct {p2}, Lcom/helpshift/widget/MutableBaseViewState;-><init>()V

    iput-object p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    .line 213
    iget-object p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->widgetGateway:Lcom/helpshift/widget/WidgetGateway;

    .line 214
    invoke-virtual {p2, p7, p1}, Lcom/helpshift/widget/WidgetGateway;->makeReplyBoxViewState(Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)Lcom/helpshift/widget/MutableReplyBoxViewState;

    move-result-object p2

    iput-object p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

    .line 216
    iget-object p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->widgetGateway:Lcom/helpshift/widget/WidgetGateway;

    invoke-virtual {p2, p7}, Lcom/helpshift/widget/WidgetGateway;->makeConfirmationBoxViewState(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Lcom/helpshift/widget/MutableBaseViewState;

    move-result-object p2

    iput-object p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->confirmationBoxViewState:Lcom/helpshift/widget/MutableBaseViewState;

    .line 219
    iget-object p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

    invoke-virtual {p2}, Lcom/helpshift/widget/MutableReplyBoxViewState;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_ab

    const/4 p2, 0x2

    goto :goto_ac

    :cond_ab
    const/4 p2, -0x1

    .line 220
    :goto_ac
    invoke-virtual {p3, p2}, Lcom/helpshift/conversation/domainmodel/ConversationController;->setConversationViewState(I)V

    if-nez p1, :cond_bc

    .line 222
    iget-object p1, p7, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object p2, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne p1, p2, :cond_bc

    .line 224
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {p1, p7}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->handleConversationEnded(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 228
    :cond_bc
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->retryFallbackAvatarImageDownload()V

    .line 231
    invoke-virtual {p4, p0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->setConversationVMCallback(Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;)V

    .line 234
    iput-object p5, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    .line 235
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->initMessagesList()V

    .line 236
    iput-boolean p6, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showConversationHistory:Z

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Lcom/helpshift/common/exception/RootAPIException;)V
    .registers 2

    .line 113
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showErrorForNoNetwork(Lcom/helpshift/common/exception/RootAPIException;)V

    return-void
.end method

.method static synthetic access$100(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V
    .registers 1

    .line 113
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateUserInputState()V

    return-void
.end method

.method static synthetic access$200(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)Lcom/helpshift/conversation/activeconversation/message/MessageDM;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->botMessageDM:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    return-object p0
.end method

.method static synthetic access$300(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;)V
    .registers 2

    .line 113
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showOptions(Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;)V

    return-void
.end method

.method static synthetic access$400(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)Lcom/helpshift/conversation/viewmodel/ListPickerVM;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->listPickerVM:Lcom/helpshift/conversation/viewmodel/ListPickerVM;

    return-object p0
.end method

.method static synthetic access$500(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V
    .registers 1

    .line 113
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateReplyBoxVisibility()V

    return-void
.end method

.method private addPreIssueFirstUserMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 696
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->clearUserReplyDraft()V

    .line 699
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->disableUserInputOptions()V

    .line 701
    invoke-static {p3}, Lcom/helpshift/util/ListUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 702
    iget-object p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {p2, p1, p3}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->addPreissueFirstUserMessageViaSmartIntent(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/util/List;)V

    goto :goto_17

    .line 706
    :cond_12
    iget-object p3, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {p3, p1, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->addPreissueFirstUserMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/lang/String;)V

    :goto_17
    return-void
.end method

.method private clearNotifications()V
    .registers 3

    .line 1973
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 1974
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->clearNotification(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 1975
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->resetPushNotificationCount(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    return-void
.end method

.method private createOptionsBotMessage(Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;)Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1589
    :cond_4
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;

    invoke-direct {v0, p1}, Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;-><init>(Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;)V

    .line 1590
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v0, p1, v1}, Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;->setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    return-object v0
.end method

.method private createOptionsBotMessage(Lcom/helpshift/conversation/activeconversation/message/FAQListMessageWithOptionInputDM;)Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1580
    :cond_4
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;

    invoke-direct {v0, p1}, Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;-><init>(Lcom/helpshift/conversation/activeconversation/message/FAQListMessageWithOptionInputDM;)V

    .line 1581
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v0, p1, v1}, Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;->setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    return-object v0
.end method

.method private createPreIssue(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/lang/String;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 735
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateLastUserActivityTime()V

    .line 737
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v1, "conversationGreetingMessage"

    invoke-virtual {v0, v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 738
    iget-boolean v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isNetworkAvailable:Z

    if-nez v0, :cond_1a

    .line 739
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "No internet connection."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onCreateConversationFailure(Ljava/lang/Exception;)V

    return-void

    .line 743
    :cond_1a
    invoke-static {p3}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 745
    iget-object p3, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {p3, p1, v4, p2, p0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->createPreIssueViaConversationalFlow(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/conversation/domainmodel/ConversationController$StartNewConversationListener;)V

    goto :goto_2f

    .line 749
    :cond_26
    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/helpshift/conversation/domainmodel/ConversationController;->createPreIssueViaSmartIntent(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/helpshift/conversation/domainmodel/ConversationController$StartNewConversationListener;)V

    :goto_2f
    return-void
.end method

.method private createPreIssueViaSmartIntent(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "Helpshift_ConvsatnlVM"

    const-string v1, "Trigger preissue creation via Smart intent"

    .line 712
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 714
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v1, v0, p1, p2, p4}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateSmartIntentData(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 715
    invoke-direct {p0, v0, p4, p3}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->addPreIssueFirstUserMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/lang/String;Ljava/util/List;)V

    .line 716
    invoke-direct {p0, v0, p4, p3}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->createPreIssue(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private disableUserInputOptions()V
    .registers 3

    .line 1182
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    if-eqz v0, :cond_7

    .line 1183
    invoke-interface {v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->hideKeyboard()V

    .line 1187
    :cond_7
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->attachImageButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    .line 1190
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->disableUserTextInput()V

    return-void
.end method

.method private disableUserTextInput()V
    .registers 3

    .line 1258
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableReplyBoxViewState;->setVisible(Z)V

    return-void
.end method

.method private evaluateBotMessages(Ljava/util/Collection;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    .line 1201
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 1202
    iget-boolean v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isInBetweenBotExecution:Z

    .line 1203
    invoke-direct {p0, p1, v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->processMessagesForBots(Ljava/util/Collection;Z)Ljava/util/List;

    move-result-object p1

    .line 1205
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v2

    if-nez v2, :cond_46

    if-eqz v1, :cond_3a

    .line 1208
    iget-boolean v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isInBetweenBotExecution:Z

    if-nez v2, :cond_3a

    .line 1210
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    .line 1212
    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->shouldEnableMessagesClick(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v2

    .line 1210
    invoke-virtual {v1, v0, v2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateMessagesClickOnBotSwitch(Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)V

    .line 1213
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->removeOptionsMessageFromUI()V

    .line 1215
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isIssueInProgress()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1222
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

    invoke-virtual {v0}, Lcom/helpshift/widget/MutableReplyBoxViewState;->setStandardTextInput()V

    .line 1223
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$15;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$15;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    goto :goto_46

    .line 1237
    :cond_3a
    iget-boolean v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isInBetweenBotExecution:Z

    if-eqz v2, :cond_46

    if-nez v1, :cond_46

    .line 1244
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateMessagesClickOnBotSwitch(Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)V

    .line 1249
    :cond_46
    :goto_46
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateUserInputState()V

    return-object p1
.end method

.method private generateSystemRedactedConversationMessageDM(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Lcom/helpshift/conversation/activeconversation/message/SystemRedactedConversationMessageDM;
    .registers 7

    .line 456
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/SystemRedactedConversationMessageDM;

    .line 457
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->getEpochCreatedAtTime()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/helpshift/conversation/activeconversation/message/SystemRedactedConversationMessageDM;-><init>(Ljava/lang/String;JI)V

    .line 460
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/conversation/activeconversation/message/SystemRedactedConversationMessageDM;->setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 461
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    iput-object p1, v0, Lcom/helpshift/conversation/activeconversation/message/SystemRedactedConversationMessageDM;->conversationLocalId:Ljava/lang/Long;

    return-object v0
.end method

.method private getUIMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 471
    iget-boolean v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isRedacted:Z

    if-eqz v1, :cond_11

    .line 472
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->generateSystemRedactedConversationMessageDM(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Lcom/helpshift/conversation/activeconversation/message/SystemRedactedConversationMessageDM;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 475
    :cond_11
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->buildUIMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_18
    return-object v0
.end method

.method private getUIMessagesForHistory(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    .line 1718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1723
    iget-boolean v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isRedacted:Z

    if-eqz v1, :cond_11

    .line 1724
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->generateSystemRedactedConversationMessageDM(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Lcom/helpshift/conversation/activeconversation/message/SystemRedactedConversationMessageDM;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 1727
    :cond_11
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_16
    return-object v0
.end method

.method private hideListPicker(Z)V
    .registers 4

    .line 1163
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$14;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$14;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Z)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method private incrementCreatedAt(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;J)V
    .registers 8

    .line 1596
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getEpochCreatedAtTime()J

    move-result-wide v1

    add-long/2addr v1, p3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1597
    sget-object p2, Lcom/helpshift/common/util/HSDateFormatSpec;->STORAGE_TIME_FORMAT:Lcom/helpshift/util/HSSimpleDateFormat;

    invoke-virtual {p2, v0}, Lcom/helpshift/util/HSSimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 1598
    invoke-static {p2}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide p3

    .line 1599
    invoke-virtual {p1, p2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->setCreatedAt(Ljava/lang/String;)V

    .line 1600
    invoke-virtual {p1, p3, p4}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->setEpochCreatedAtTime(J)V

    return-void
.end method

.method private loadHistoryMessagesInternal()V
    .registers 3

    .line 2149
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->historyLoadingViewState:Lcom/helpshift/widget/MutableHistoryLoadingViewState;

    invoke-virtual {v0}, Lcom/helpshift/widget/MutableHistoryLoadingViewState;->getState()Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    move-result-object v0

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;->LOADING:Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    if-ne v0, v1, :cond_b

    return-void

    .line 2154
    :cond_b
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$26;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$26;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method private markMessagesAsSeenOnEntry()V
    .registers 4

    .line 331
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->isSynced(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    .line 340
    :cond_f
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v2, Lcom/helpshift/conversation/viewmodel/ConversationalVM$2;

    invoke-direct {v2, p0, v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$2;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    invoke-virtual {v1, v2}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method private markMessagesAsSeenOnExit()V
    .registers 4

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getAllConversations()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 306
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v1

    .line 307
    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v2, v1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->isSynced(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 308
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 314
    :cond_1c
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v2, Lcom/helpshift/conversation/viewmodel/ConversationalVM$1;

    invoke-direct {v2, p0, v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$1;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method private notifyRendererForScrollToBottom()V
    .registers 3

    .line 2187
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$27;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$27;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method private processMessagesForBots(Ljava/util/Collection;Z)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 499
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object p1

    .line 501
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    .line 502
    invoke-virtual {v1, v0, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->evaluateBotExecutionState(Ljava/util/List;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isInBetweenBotExecution:Z

    .line 504
    iget-boolean p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isInBetweenBotExecution:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_84

    .line 509
    iget-object p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {p2, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->getLatestUnansweredBotMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object p1

    .line 510
    iget-object p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->botMessageDM:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    const/4 v2, 0x1

    if-eqz p2, :cond_32

    if-eqz p1, :cond_32

    .line 515
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    iget-object v3, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 516
    iput-boolean v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->awaitingUserInputForBotStep:Z

    return-object v0

    :cond_32
    if-eqz p1, :cond_77

    .line 521
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v3, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_TEXT_WITH_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-eq p2, v3, :cond_40

    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v3, Lcom/helpshift/conversation/activeconversation/message/MessageType;->FAQ_LIST_WITH_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-ne p2, v3, :cond_77

    .line 527
    :cond_40
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_79

    .line 533
    iget-object v3, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v4, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_TEXT_WITH_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-ne v3, v4, :cond_5c

    .line 534
    move-object v3, p1

    check-cast v3, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;

    .line 535
    invoke-direct {p0, v3}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->createOptionsBotMessage(Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;)Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;

    move-result-object v4

    .line 539
    iget v3, v3, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;->attachmentCount:I

    add-int/2addr v3, v2

    int-to-long v5, v3

    invoke-direct {p0, v4, p1, v5, v6}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->incrementCreatedAt(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;J)V

    goto :goto_68

    .line 542
    :cond_5c
    move-object v3, p1

    check-cast v3, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageWithOptionInputDM;

    invoke-direct {p0, v3}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->createOptionsBotMessage(Lcom/helpshift/conversation/activeconversation/message/FAQListMessageWithOptionInputDM;)Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;

    move-result-object v4

    const-wide/16 v5, 0x1

    .line 545
    invoke-direct {p0, v4, p1, v5, v6}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->incrementCreatedAt(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;J)V

    .line 550
    :goto_68
    iget-object v3, v4, Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;

    iget-object v3, v3, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;->type:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    sget-object v5, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;->PILL:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    if-ne v3, v5, :cond_74

    add-int/2addr p2, v2

    .line 551
    invoke-interface {v0, p2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 553
    :cond_74
    iput-object v4, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->botMessageDM:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    goto :goto_79

    .line 557
    :cond_77
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->botMessageDM:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    :cond_79
    :goto_79
    if-eqz p1, :cond_81

    .line 562
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->removeOptionsMessageFromUI()V

    .line 563
    iput-boolean v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->awaitingUserInputForBotStep:Z

    goto :goto_86

    .line 566
    :cond_81
    iput-boolean v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->awaitingUserInputForBotStep:Z

    goto :goto_86

    .line 570
    :cond_84
    iput-boolean v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->awaitingUserInputForBotStep:Z

    :goto_86
    return-object v0
.end method

.method private pushAnalyticsEvent(Lcom/helpshift/analytics/AnalyticsEventType;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/analytics/AnalyticsEventType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1983
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getAnalyticsEventDM()Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;->pushEvent(Lcom/helpshift/analytics/AnalyticsEventType;Ljava/util/Map;)V

    return-void
.end method

.method private removeOptionsMessageFromUI()V
    .registers 6

    .line 578
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->messageListVM:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    if-nez v0, :cond_5

    return-void

    .line 582
    :cond_5
    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->copyOfUIMessageDMs()Ljava/util/List;

    move-result-object v0

    .line 583
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 584
    invoke-static {v0}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 585
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 586
    iget-object v3, v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v4, Lcom/helpshift/conversation/activeconversation/message/MessageType;->OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-ne v3, v4, :cond_18

    .line 587
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 590
    :cond_2e
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->messageListVM:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->remove(Ljava/util/List;)V

    :cond_33
    const/4 v0, 0x0

    .line 597
    invoke-direct {p0, v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->hideListPicker(Z)V

    return-void
.end method

.method private resetIncrementMessageCountFlag()V
    .registers 5

    .line 1979
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->setShouldIncrementMessageCount(Lcom/helpshift/conversation/activeconversation/model/Conversation;ZZ)V

    return-void
.end method

.method private retryFallbackAvatarImageDownload()V
    .registers 3

    .line 2430
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$30;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$30;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method private sendNormalTextMessage(Ljava/lang/String;)V
    .registers 4

    .line 855
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->clearReply()V

    .line 856
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$7;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$7;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method private setScreenVisibility(Z)V
    .registers 2

    .line 293
    iput-boolean p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isScreenCurrentlyVisible:Z

    return-void
.end method

.method private setUserCanReadMessages(Z)V
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->setUserCanReadMessages(Z)V

    .line 298
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->isAgentTyping()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onAgentTypingUpdate(Z)V

    return-void
.end method

.method private shouldShowReplyBoxOnConversationRejected()Z
    .registers 2

    .line 1926
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->getUserReplyText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    .line 1927
    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->shouldPersistMessageBox()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->retainMessageBoxOnUI:Z

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method private showConfirmationBox()V
    .registers 3

    .line 2209
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableReplyBoxViewState;->setVisible(Z)V

    .line 2210
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateAttachmentButtonViewState()V

    .line 2211
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->confirmationBoxViewState:Lcom/helpshift/widget/MutableBaseViewState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    .line 2212
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationFooterViewState:Lcom/helpshift/widget/MutableConversationFooterViewState;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->NONE:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableConversationFooterViewState;->setState(Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;)V

    return-void
.end method

.method private showErrorForNoNetwork(Lcom/helpshift/common/exception/RootAPIException;)V
    .registers 3

    .line 930
    iget-object p1, p1, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    instance-of p1, p1, Lcom/helpshift/common/exception/NetworkException;

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {p1}, Lcom/helpshift/common/platform/Platform;->isOnline()Z

    move-result p1

    if-nez p1, :cond_18

    .line 931
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$9;

    invoke-direct {v0, p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$9;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V

    invoke-virtual {p1, v0}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    :cond_18
    return-void
.end method

.method private showListPicker(Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;)V
    .registers 4

    .line 1680
    new-instance v0, Lcom/helpshift/conversation/viewmodel/ListPickerVM;

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-direct {v0, v1, p1, p0}, Lcom/helpshift/conversation/viewmodel/ListPickerVM;-><init>(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;Lcom/helpshift/conversation/viewmodel/ListPickerVMCallback;)V

    iput-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->listPickerVM:Lcom/helpshift/conversation/viewmodel/ListPickerVM;

    .line 1681
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$23;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$23;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method private showMessageBox()V
    .registers 3

    .line 2202
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableReplyBoxViewState;->setVisible(Z)V

    .line 2203
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateAttachmentButtonViewState()V

    .line 2204
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->confirmationBoxViewState:Lcom/helpshift/widget/MutableBaseViewState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    .line 2205
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationFooterViewState:Lcom/helpshift/widget/MutableConversationFooterViewState;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->NONE:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableConversationFooterViewState;->setState(Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;)V

    return-void
.end method

.method private showOptions(Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;)V
    .registers 4

    .line 1655
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;

    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;->type:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;->PILL:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    if-ne v0, v1, :cond_10

    .line 1656
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;

    invoke-interface {v0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->showOptionInput(Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;)V

    goto :goto_13

    .line 1659
    :cond_10
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showListPicker(Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;)V

    :goto_13
    return-void
.end method

.method private showUnreadMessagesIndicator()V
    .registers 3

    .line 2071
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->scrollJumperViewState:Lcom/helpshift/widget/MutableScrollJumperViewState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableScrollJumperViewState;->setShouldShowUnreadMessagesIndicator(Z)V

    return-void
.end method

.method private updateAttachmentButtonViewState()V
    .registers 3

    .line 2216
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->resetDefaultMenuItemsVisibility()V

    .line 2218
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->attachImageButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    invoke-virtual {v0}, Lcom/helpshift/widget/MutableBaseViewState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2219
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->attachImageButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    iget-boolean v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isConversationRejected:Z

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

    invoke-virtual {v1}, Lcom/helpshift/widget/MutableReplyBoxViewState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    :cond_1f
    return-void
.end method

.method private updateReplyBoxVisibility()V
    .registers 3

    .line 1613
    iget-boolean v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isInBetweenBotExecution:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    .line 1614
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    invoke-static {v0}, Lcom/helpshift/conversation/ConversationUtil;->isInProgressState(Lcom/helpshift/conversation/dto/IssueState;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1617
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->botMessageDM:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    if-nez v0, :cond_1d

    .line 1618
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableReplyBoxViewState;->setVisible(Z)V

    return-void

    .line 1623
    :cond_1d
    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_TEXT_WITH_TEXT_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-ne v0, v1, :cond_2f

    .line 1624
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->botMessageDM:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;

    .line 1625
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/TextInput;

    invoke-virtual {v1, v0}, Lcom/helpshift/widget/MutableReplyBoxViewState;->setInput(Lcom/helpshift/conversation/activeconversation/message/input/Input;)V

    goto :goto_52

    .line 1627
    :cond_2f
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->botMessageDM:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-ne v0, v1, :cond_52

    .line 1629
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$22;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$22;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    goto :goto_52

    .line 1645
    :cond_42
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

    invoke-virtual {v0}, Lcom/helpshift/widget/MutableReplyBoxViewState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1646
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

    invoke-virtual {v0}, Lcom/helpshift/widget/MutableReplyBoxViewState;->setStandardTextInput()V

    .line 1650
    :cond_4f
    invoke-direct {p0, v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->hideListPicker(Z)V

    :cond_52
    :goto_52
    return-void
.end method

.method private updateUserInputState()V
    .registers 6

    .line 1266
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 1268
    iget-object v1, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    .line 1269
    sget-object v2, Lcom/helpshift/conversation/dto/IssueState;->REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_13

    .line 1272
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->disableUserInputOptions()V

    :cond_11
    :goto_11
    const/4 v3, 0x0

    goto :goto_73

    .line 1274
    :cond_13
    sget-object v2, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REQUESTED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v1, v2, :cond_11

    sget-object v2, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_ACCEPTED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v1, v2, :cond_11

    sget-object v2, Lcom/helpshift/conversation/dto/IssueState;->COMPLETED_ISSUE_CREATED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v1, v2, :cond_20

    goto :goto_11

    .line 1279
    :cond_20
    iget-boolean v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isInBetweenBotExecution:Z

    if-eqz v1, :cond_59

    .line 1282
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->attachImageButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    invoke-virtual {v1, v4}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    .line 1284
    iget-boolean v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->awaitingUserInputForBotStep:Z

    if-eqz v1, :cond_2e

    goto :goto_11

    .line 1290
    :cond_2e
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->disableUserInputOptions()V

    .line 1296
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->messageListVM:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    if-eqz v1, :cond_73

    .line 1298
    iget-object v1, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v1}, Lcom/helpshift/util/HSObservableList;->size()I

    move-result v1

    if-lez v1, :cond_73

    .line 1300
    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/helpshift/util/HSObservableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 1301
    instance-of v1, v0, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;

    if-nez v1, :cond_4e

    instance-of v1, v0, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForOptionInput;

    if-eqz v1, :cond_73

    .line 1303
    :cond_4e
    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    .line 1304
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->getState()Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    move-result-object v0

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->SENT:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    if-ne v0, v1, :cond_11

    goto :goto_73

    .line 1310
    :cond_59
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 1313
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->disableUserInputOptions()V

    goto :goto_73

    .line 1316
    :cond_6b
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentVM:Lcom/helpshift/conversation/viewmodel/SmartIntentVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/SmartIntentVM;->shouldShowSmartIntentFakeTypingIndicator()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1323
    :cond_73
    :goto_73
    invoke-virtual {p0, v3}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showFakeTypingIndicator(Z)V

    return-void
.end method


# virtual methods
.method public add(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 2

    .line 2036
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->addAll(Ljava/util/Collection;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .registers 2

    .line 113
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->add(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)V"
        }
    .end annotation

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAll called : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Helpshift_ConvsatnlVM"

    invoke-static {v1, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 1066
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    .line 1067
    invoke-virtual {v1, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->hasBotSwitchedToAnotherBotInPollerResponse(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    .line 1070
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v1, v0, v2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateMessagesClickOnBotSwitch(Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)V

    .line 1074
    :cond_2e
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->evaluateBotMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 1077
    iget-boolean v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isInBetweenBotExecution:Z

    if-eqz v1, :cond_49

    .line 1081
    iget-boolean v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isUserReplyDraftClearedForBotChange:Z

    if-nez v1, :cond_4b

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    .line 1082
    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->containsAtleastOneUserMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1083
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->clearUserReplyDraft()V

    const/4 v0, 0x1

    .line 1084
    iput-boolean v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isUserReplyDraftClearedForBotChange:Z

    goto :goto_4b

    .line 1088
    :cond_49
    iput-boolean v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isUserReplyDraftClearedForBotChange:Z

    .line 1091
    :cond_4b
    :goto_4b
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->messageListVM:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    if-eqz v0, :cond_52

    .line 1092
    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->addMessages(Ljava/util/Collection;)V

    :cond_52
    return-void
.end method

.method public appendMessages(II)V
    .registers 4

    .line 2047
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    if-eqz v0, :cond_7

    .line 2048
    invoke-interface {v0, p1, p2}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->appendMessages(II)V

    :cond_7
    return-void
.end method

.method protected buildUIMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 482
    iget-object v1, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    iget-object v2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 487
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->shouldOpen(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 488
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->processMessagesForBots(Ljava/util/Collection;Z)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 491
    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method clearReply()V
    .registers 3

    .line 844
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$6;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$6;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public clearUserReplyDraft()V
    .registers 3

    .line 389
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->saveUserReplyText(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyFieldViewState:Lcom/helpshift/widget/MutableReplyFieldViewState;

    invoke-virtual {v0}, Lcom/helpshift/widget/MutableReplyFieldViewState;->clearReplyText()V

    return-void
.end method

.method public createPreIssueFromSmartIntentSelection(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2318
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->createPreIssueViaSmartIntent(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public createPreIssueFromSmartIntentSendButton(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 2323
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->createPreIssueViaSmartIntent(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method createPreIssueViaConversationalFlow(Ljava/lang/String;)V
    .registers 4

    const-string v0, "Helpshift_ConvsatnlVM"

    const-string v1, "Trigger preissue creation via Conversational flow"

    .line 726
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    const/4 v1, 0x0

    .line 728
    invoke-direct {p0, v0, p1, v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->addPreIssueFirstUserMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/lang/String;Ljava/util/List;)V

    .line 729
    invoke-direct {p0, v0, p1, v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->createPreIssue(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method createPreIssueViaUserRetry(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Helpshift_ConvsatnlVM"

    const-string v1, "Trigger preissue creation via User retry"

    .line 720
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 722
    invoke-direct {p0, v0, p1, p2}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->createPreIssue(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public downloadAvatarImage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 4

    .line 2451
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-virtual {v0}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->isPersonalisedBotEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->author:Lcom/helpshift/conversation/activeconversation/message/Author;

    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/message/Author;->role:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->BOT:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    if-eq v0, v1, :cond_20

    :cond_10
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    .line 2452
    invoke-virtual {v0}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->isPersonalisedAgentEnabled()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->author:Lcom/helpshift/conversation/activeconversation/message/Author;

    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/message/Author;->role:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->AGENT:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    if-ne v0, v1, :cond_3f

    .line 2453
    :cond_20
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->messageToAvatarTriggeredMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_30

    .line 2454
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 2455
    :cond_30
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->messageToAvatarTriggeredMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2456
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->downloadAvatarImage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    :cond_3f
    return-void
.end method

.method public forceClickOnNewConversationButton()V
    .registers 2

    .line 1966
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    iget-boolean v0, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isStartNewConversationClicked:Z

    if-eqz v0, :cond_d

    .line 1967
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onNewConversationButtonClicked()V

    :cond_d
    return-void
.end method

.method public getAttachImageButtonViewState()Lcom/helpshift/widget/BaseViewState;
    .registers 2

    .line 2261
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->attachImageButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    return-object v0
.end method

.method public getConfirmationBoxViewState()Lcom/helpshift/widget/BaseViewState;
    .registers 2

    .line 2269
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->confirmationBoxViewState:Lcom/helpshift/widget/MutableBaseViewState;

    return-object v0
.end method

.method public getConversationFooterViewState()Lcom/helpshift/widget/ConversationFooterViewState;
    .registers 2

    .line 2257
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationFooterViewState:Lcom/helpshift/widget/MutableConversationFooterViewState;

    return-object v0
.end method

.method public getHistoryLoadingViewState()Lcom/helpshift/widget/HistoryLoadingViewState;
    .registers 2

    .line 2249
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->historyLoadingViewState:Lcom/helpshift/widget/MutableHistoryLoadingViewState;

    return-object v0
.end method

.method public getReplyBoxViewState()Lcom/helpshift/widget/ReplyBoxViewState;
    .registers 2

    .line 2265
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

    return-object v0
.end method

.method public getReplyButtonViewState()Lcom/helpshift/widget/BaseViewState;
    .registers 2

    .line 2273
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    return-object v0
.end method

.method public getReplyFieldViewState()Lcom/helpshift/widget/ReplyFieldViewState;
    .registers 2

    .line 2245
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyFieldViewState:Lcom/helpshift/widget/MutableReplyFieldViewState;

    return-object v0
.end method

.method public getScrollJumperViewState()Lcom/helpshift/widget/ScrollJumperViewState;
    .registers 2

    .line 2253
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->scrollJumperViewState:Lcom/helpshift/widget/MutableScrollJumperViewState;

    return-object v0
.end method

.method public getSmartIntentClearSearchButtonViewState()Lcom/helpshift/widget/BaseViewState;
    .registers 2

    .line 2381
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentVM:Lcom/helpshift/conversation/viewmodel/SmartIntentVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/SmartIntentVM;->getClearSearchButtonViewState()Lcom/helpshift/widget/BaseViewState;

    move-result-object v0

    return-object v0
.end method

.method public getSmartIntentInstanceSaveState()Lcom/helpshift/conversation/smartintent/SmartIntentSavedState;
    .registers 2

    .line 2400
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentVM:Lcom/helpshift/conversation/viewmodel/SmartIntentVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/SmartIntentVM;->buildInstanceSaveState()Lcom/helpshift/conversation/smartintent/SmartIntentSavedState;

    move-result-object v0

    return-object v0
.end method

.method public getSmartIntentReplyButtonViewState()Lcom/helpshift/widget/BaseViewState;
    .registers 2

    .line 2377
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentVM:Lcom/helpshift/conversation/viewmodel/SmartIntentVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/SmartIntentVM;->getReplyButtonViewState()Lcom/helpshift/widget/BaseViewState;

    move-result-object v0

    return-object v0
.end method

.method public getSmartIntentReplyFieldViewState()Lcom/helpshift/widget/ReplyFieldViewState;
    .registers 2

    .line 2385
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentVM:Lcom/helpshift/conversation/viewmodel/SmartIntentVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/SmartIntentVM;->getReplyFieldViewState()Lcom/helpshift/widget/ReplyFieldViewState;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteListedAttachmentTypes()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1897
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1898
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-virtual {v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getWhiteListAttachmentMimeTypes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    .line 1900
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v1, :cond_57

    const-string v6, "*/*"

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    goto :goto_57

    .line 1906
    :cond_25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "image/"

    .line 1907
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 1908
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_41
    const-string v7, "video/"

    .line 1910
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 1911
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 1914
    :cond_4d
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1917
    :goto_50
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v6

    if-ne v6, v4, :cond_29

    goto :goto_60

    .line 1901
    :cond_57
    :goto_57
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1902
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1903
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1922
    :cond_60
    :goto_60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public handleAdminAttachmentMessageClick(Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;)V
    .registers 3

    .line 1789
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->onAdminAttachmentMessageClicked(Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;)V

    return-void
.end method

.method public handleAdminSuggestedQuestionRead(Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 1500
    invoke-static {p3}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1501
    iget-object v3, p1, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;->conversationLocalId:Ljava/lang/Long;

    .line 1502
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v7, Lcom/helpshift/conversation/viewmodel/ConversationalVM$21;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$21;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Ljava/lang/Long;Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    :cond_17
    return-void
.end method

.method public handleAppReviewRequestClick(Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;)V
    .registers 5

    .line 981
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v1, "reviewUrl"

    invoke-virtual {v0, v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 982
    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 983
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->setAppReviewed(Z)V

    .line 984
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    if-eqz v1, :cond_1f

    .line 985
    invoke-interface {v1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->openAppReviewStore(Ljava/lang/String;)V

    .line 988
    :cond_1f
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->handleAppReviewRequestClick(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;)V

    return-void
.end method

.method public handleBackPressedForSmartIntent()Z
    .registers 2

    .line 2365
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentVM:Lcom/helpshift/conversation/viewmodel/SmartIntentVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/SmartIntentVM;->handleBackPressedForSmartIntent()Z

    move-result v0

    return v0
.end method

.method handleConversationRejectedState()V
    .registers 4

    .line 1878
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 1879
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/helpshift/conversation/domainmodel/ConversationController;->saveUserReplyText(Ljava/lang/String;)V

    .line 1882
    iget-boolean v0, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isRedacted:Z

    if-eqz v0, :cond_14

    .line 1883
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->REDACTED_STATE:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    goto :goto_16

    .line 1886
    :cond_14
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->REJECTED_MESSAGE:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    .line 1888
    :goto_16
    invoke-virtual {p0, v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showStartNewConversation(Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;)V

    const/4 v0, 0x1

    .line 1889
    iput-boolean v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isConversationRejected:Z

    return-void
.end method

.method public handleIdempotentPreIssueCreationSuccess()V
    .registers 3

    .line 1460
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$19;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$19;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public handleLeafIntentSelected(Lcom/helpshift/conversation/smartintent/LeafIntentUIModel;)V
    .registers 3

    .line 273
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentVM:Lcom/helpshift/conversation/viewmodel/SmartIntentVM;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/viewmodel/SmartIntentVM;->handleLeafIntentSelected(Lcom/helpshift/conversation/smartintent/LeafIntentUIModel;)V

    return-void
.end method

.method public handleOptionSelected(Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;Z)V
    .registers 8

    .line 1113
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->messageListVM:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    if-nez v0, :cond_5

    return-void

    .line 1119
    :cond_5
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;

    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;->type:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;->PILL:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_27

    .line 1123
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->messageListVM:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getUiMessageDMs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1124
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->messageListVM:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->remove(Ljava/util/List;)V

    .line 1128
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    sub-int/2addr v0, v2

    invoke-interface {v1, v0, v2}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->updateMessages(II)V

    .line 1132
    :cond_27
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateLastUserActivityTime()V

    .line 1134
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;

    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;->type:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;->PILL:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    if-ne v0, v1, :cond_36

    .line 1136
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->disableUserInputOptions()V

    goto :goto_41

    .line 1138
    :cond_36
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;

    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;->type:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;->PICKER:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    if-ne v0, v1, :cond_41

    .line 1139
    invoke-direct {p0, v2}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->hideListPicker(Z)V

    .line 1141
    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$13;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;Z)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public handleOptionSelectedForPicker(Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 1670
    iput-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->listPickerVM:Lcom/helpshift/conversation/viewmodel/ListPickerVM;

    .line 1671
    invoke-virtual {p0, p1, p2, p3}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->handleOptionSelected(Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;Z)V

    return-void
.end method

.method public handleOptionSelectedForPicker(Lcom/helpshift/conversation/viewmodel/OptionUIModel;Z)V
    .registers 4

    .line 1699
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->listPickerVM:Lcom/helpshift/conversation/viewmodel/ListPickerVM;

    if-eqz v0, :cond_7

    .line 1700
    invoke-virtual {v0, p1, p2}, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->handleOptionSelectedForPicker(Lcom/helpshift/conversation/viewmodel/OptionUIModel;Z)V

    :cond_7
    return-void
.end method

.method public handlePreIssueCreationSuccess()V
    .registers 3

    .line 1419
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$18;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$18;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public handleRootIntentSelected(Lcom/helpshift/conversation/smartintent/RootIntentUIModel;)V
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentVM:Lcom/helpshift/conversation/viewmodel/SmartIntentVM;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/viewmodel/SmartIntentVM;->handleRootIntentSelected(Lcom/helpshift/conversation/smartintent/RootIntentUIModel;)V

    return-void
.end method

.method public handleScreenshotMessageClick(Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;)V
    .registers 3

    .line 973
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->onScreenshotMessageClicked(Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;)V

    return-void
.end method

.method public handleSearchIntentSelected(Lcom/helpshift/conversation/smartintent/SearchIntentUIModel;)V
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentVM:Lcom/helpshift/conversation/viewmodel/SmartIntentVM;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/viewmodel/SmartIntentVM;->handleSearchIntentSelected(Lcom/helpshift/conversation/smartintent/SearchIntentUIModel;)V

    return-void
.end method

.method public handleStateChangeForIssueMode(Lcom/helpshift/conversation/dto/IssueState;)V
    .registers 8

    .line 1821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changing conversation status to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Helpshift_ConvsatnlVM"

    invoke-static {v1, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 1823
    invoke-static {p1}, Lcom/helpshift/conversation/ConversationUtil;->isInProgressState(Lcom/helpshift/conversation/dto/IssueState;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v1, :cond_2e

    .line 1825
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showMessageBox()V

    const/4 p1, 0x0

    :goto_2a
    const/4 v0, 0x0

    const/4 v5, 0x2

    goto/16 :goto_a2

    .line 1829
    :cond_2e
    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REQUESTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne p1, v1, :cond_4c

    .line 1830
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-virtual {p1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->shouldShowConversationResolutionQuestion()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 1831
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showConfirmationBox()V

    .line 1835
    :cond_3d
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->scrollJumperViewState:Lcom/helpshift/widget/MutableScrollJumperViewState;

    invoke-virtual {p1}, Lcom/helpshift/widget/MutableScrollJumperViewState;->isVisible()Z

    move-result p1

    if-nez p1, :cond_48

    .line 1836
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->notifyRendererForScrollToBottom()V

    :cond_48
    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_a2

    .line 1839
    :cond_4c
    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne p1, v1, :cond_56

    .line 1841
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->handleConversationRejectedState()V

    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_a2

    .line 1843
    :cond_56
    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_ACCEPTED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq p1, v1, :cond_86

    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_EXPIRED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne p1, v1, :cond_5f

    goto :goto_86

    .line 1853
    :cond_5f
    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne p1, v1, :cond_72

    .line 1854
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {p1, v4}, Lcom/helpshift/conversation/domainmodel/ConversationController;->setPersistMessageBox(Z)V

    .line 1855
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showMessageBox()V

    .line 1856
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {p1, v0, v3}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->setEnableMessageClickOnResolutionRejected(Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)V

    const/4 p1, 0x1

    goto :goto_2a

    .line 1859
    :cond_72
    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->ARCHIVED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne p1, v0, :cond_7c

    .line 1860
    sget-object p1, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->ARCHIVAL_MESSAGE:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showStartNewConversation(Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;)V

    goto :goto_a0

    .line 1862
    :cond_7c
    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->AUTHOR_MISMATCH:Lcom/helpshift/conversation/dto/IssueState;

    if-ne p1, v0, :cond_a0

    .line 1863
    sget-object p1, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->AUTHOR_MISMATCH:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showStartNewConversation(Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;)V

    goto :goto_a0

    .line 1845
    :cond_86
    :goto_86
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->saveUserReplyText(Ljava/lang/String;)V

    .line 1846
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {p1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->shouldShowCSATInFooter(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 1847
    sget-object p1, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->CSAT_RATING:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showStartNewConversation(Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;)V

    goto :goto_a0

    .line 1850
    :cond_9b
    sget-object p1, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->START_NEW_CONVERSATION:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showStartNewConversation(Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;)V

    :cond_a0
    :goto_a0
    const/4 p1, 0x1

    const/4 v0, 0x0

    :goto_a2
    if-eqz v3, :cond_a7

    .line 1868
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateUIOnNewMessageReceived()V

    :cond_a7
    if-eqz p1, :cond_ac

    .line 1871
    invoke-virtual {p0, v4}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onAgentTypingUpdate(Z)V

    .line 1873
    :cond_ac
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {p1, v5}, Lcom/helpshift/conversation/domainmodel/ConversationController;->setConversationViewState(I)V

    .line 1874
    iput-boolean v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isConversationRejected:Z

    return-void
.end method

.method public handleUserAttachmentMessageClick(Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;)V
    .registers 3

    .line 977
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->onUserAttachmentMessageClicked(Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;)V

    return-void
.end method

.method protected hideAllFooterWidgets()V
    .registers 3

    .line 2224
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableReplyBoxViewState;->setVisible(Z)V

    .line 2225
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateAttachmentButtonViewState()V

    .line 2226
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->confirmationBoxViewState:Lcom/helpshift/widget/MutableBaseViewState;

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    .line 2227
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationFooterViewState:Lcom/helpshift/widget/MutableConversationFooterViewState;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->NONE:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableConversationFooterViewState;->setState(Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;)V

    return-void
.end method

.method public hideFakeTypingIndicatorFromSmartIntent()V
    .registers 2

    const/4 v0, 0x0

    .line 2287
    invoke-virtual {p0, v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showFakeTypingIndicator(Z)V

    return-void
.end method

.method public hidePickerClearButton()V
    .registers 2

    .line 1711
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    invoke-interface {v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->hidePickerClearButton()V

    return-void
.end method

.method public hideReplyFooterFromSmartIntent()V
    .registers 3

    .line 2305
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$29;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$29;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public hideSmartIntentView()V
    .registers 3

    const-string v0, "Helpshift_ConvsatnlVM"

    const-string v1, "hideSmartIntentView called"

    .line 2351
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    if-eqz v0, :cond_13

    .line 2353
    invoke-interface {v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->hideSendReplyUI()V

    .line 2354
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    invoke-interface {v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->hideSmartIntentView()V

    :cond_13
    return-void
.end method

.method protected initMessagesList()V
    .registers 7

    .line 398
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->messageListVM:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    if-eqz v0, :cond_7

    .line 399
    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->unregisterMessageListVMCallback()V

    .line 402
    :cond_7
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->initializeConversationsForUI()V

    .line 409
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->initializeIssueStatusForUI(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 410
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->hasMoreMessages()Z

    move-result v1

    .line 411
    new-instance v2, Lcom/helpshift/conversation/viewmodel/MessageListVM;

    iget-object v3, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->platform:Lcom/helpshift/common/platform/Platform;

    iget-object v4, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-direct {v2, v3, v4}, Lcom/helpshift/conversation/viewmodel/MessageListVM;-><init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;)V

    iput-object v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->messageListVM:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    .line 412
    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v2}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getUIConversations()Ljava/util/List;

    move-result-object v2

    .line 415
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 416
    iget-object v4, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v4}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getAllConversations()Ljava/util/List;

    move-result-object v4

    .line 417
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 418
    invoke-direct {p0, v5}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getUIMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3d

    .line 421
    :cond_51
    iget-object v4, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->messageListVM:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    invoke-virtual {v4, v2, v3, v1, p0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->initializeMessageList(Ljava/util/List;Ljava/util/List;ZLcom/helpshift/conversation/viewmodel/MessageListVMCallback;)V

    .line 423
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->messageListVM:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    invoke-virtual {v2}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getUiMessageDMs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->initializeMessages(Ljava/util/List;)V

    .line 425
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v1, p0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->registerMessagesObserver(Lcom/helpshift/util/HSListObserver;)V

    .line 426
    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v0, v1, :cond_6e

    const/4 v0, 0x1

    goto :goto_6f

    :cond_6e
    const/4 v0, 0x0

    :goto_6f
    iput-boolean v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isConversationRejected:Z

    .line 427
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->prefillReplyBox()V

    return-void
.end method

.method public isMessageBoxVisible()Z
    .registers 2

    .line 999
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

    invoke-virtual {v0}, Lcom/helpshift/widget/MutableReplyBoxViewState;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isVisibleOnUI()Z
    .registers 2

    .line 1004
    iget-boolean v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isScreenCurrentlyVisible:Z

    return v0
.end method

.method public launchAttachment(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1803
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    invoke-interface {v0, p1, p2}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->launchAttachment(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public launchScreenshotAttachment(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 994
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    invoke-interface {v0, p1, p2}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->launchScreenshotAttachment(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public markConversationResolutionStatus(Z)V
    .registers 5

    .line 1807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending resolution event : Accepted? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Helpshift_ConvsatnlVM"

    invoke-static {v1, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 1811
    iget-object v1, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v2, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REQUESTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v1, v2, :cond_27

    .line 1812
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v1, v0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->markConversationResolutionStatus(Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)V

    :cond_27
    return-void
.end method

.method public newAdminMessagesAdded()V
    .registers 1

    .line 2055
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateUIOnNewMessageReceived()V

    return-void
.end method

.method public newUserMessagesAdded()V
    .registers 1

    .line 2061
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->notifyRendererForScrollToBottom()V

    return-void
.end method

.method public onActionCardMessageClicked(Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;)V
    .registers 3

    .line 1797
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->onActionCardMessageClicked(Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;)V

    .line 1798
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->getUriAsStringForAction()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->openActionLink(Ljava/lang/String;)V

    return-void
.end method

.method public onAdminMessageLinkClickFailed()V
    .registers 3

    .line 1793
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    sget-object v1, Lcom/helpshift/common/exception/PlatformException;->NO_APPS_FOR_OPENING_ATTACHMENT:Lcom/helpshift/common/exception/PlatformException;

    invoke-interface {v0, v1}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->showErrorView(Lcom/helpshift/common/exception/ExceptionType;)V

    return-void
.end method

.method public onAdminMessageLinkClicked(Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 8

    const/4 v0, 0x0

    .line 1990
    :try_start_1
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1993
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    :cond_c
    move-object v1, v0

    .line 1998
    :goto_d
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    .line 1999
    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v2}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getAllConversations()Ljava/util/List;

    move-result-object v2

    .line 2001
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 2002
    iget-object v4, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-virtual {v4, p2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    move-object v0, v3

    .line 2007
    :cond_2e
    invoke-static {v1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_77

    .line 2008
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_68

    .line 2010
    iget-object v2, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    invoke-static {v2}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 2011
    iget-object v2, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    const-string v3, "preissue_id"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2013
    :cond_4a
    iget-object v2, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    invoke-static {v2}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 2014
    iget-object v2, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    const-string v3, "issue_id"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2016
    :cond_59
    iget-object v2, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    invoke-static {v2}, Lcom/helpshift/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 2017
    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    const-string v2, "acid"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_68
    const-string v0, "p"

    .line 2020
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "u"

    .line 2021
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    sget-object p1, Lcom/helpshift/analytics/AnalyticsEventType;->ADMIN_MESSAGE_DEEPLINK_CLICKED:Lcom/helpshift/analytics/AnalyticsEventType;

    invoke-direct {p0, p1, p2}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->pushAnalyticsEvent(Lcom/helpshift/analytics/AnalyticsEventType;Ljava/util/Map;)V

    :cond_77
    return-void
.end method

.method public onAgentTypingUpdate(Z)V
    .registers 4

    .line 1009
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$11;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$11;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Z)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public onAttachmentButtonClick()V
    .registers 3

    .line 1893
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->setPersistMessageBox(Z)V

    return-void
.end method

.method public onAuthenticationFailure()V
    .registers 3

    .line 2109
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$25;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$25;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public onCSATSurveyCancelled()V
    .registers 4

    .line 1953
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 1954
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_1c

    .line 1955
    iget-object v2, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    invoke-static {v2}, Lcom/helpshift/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1956
    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    const-string v2, "acid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1958
    :cond_1c
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getAnalyticsEventDM()Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;

    move-result-object v0

    sget-object v2, Lcom/helpshift/analytics/AnalyticsEventType;->CANCEL_CSAT_RATING:Lcom/helpshift/analytics/AnalyticsEventType;

    invoke-virtual {v0, v2, v1}, Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;->pushEvent(Lcom/helpshift/analytics/AnalyticsEventType;Ljava/util/Map;)V

    return-void
.end method

.method public onCSATSurveyStarted()V
    .registers 4

    .line 1932
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 1933
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_1c

    .line 1934
    iget-object v2, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    invoke-static {v2}, Lcom/helpshift/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1935
    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    const-string v2, "acid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    :cond_1c
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getAnalyticsEventDM()Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;

    move-result-object v0

    sget-object v2, Lcom/helpshift/analytics/AnalyticsEventType;->START_CSAT_RATING:Lcom/helpshift/analytics/AnalyticsEventType;

    invoke-virtual {v0, v2, v1}, Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;->pushEvent(Lcom/helpshift/analytics/AnalyticsEventType;Ljava/util/Map;)V

    return-void
.end method

.method public onCSATSurveySubmitted(ILjava/lang/String;)V
    .registers 6

    .line 1941
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    if-eqz v0, :cond_7

    .line 1942
    invoke-interface {v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->showCSATSubmittedView()V

    .line 1944
    :cond_7
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 1945
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isIssueInProgress()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1946
    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->START_NEW_CONVERSATION:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    invoke-virtual {p0, v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showStartNewConversation(Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;)V

    .line 1948
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending CSAT rating : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", feedback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Helpshift_ConvsatnlVM"

    invoke-static {v2, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v1, v0, p1, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendCSATSurvey(Lcom/helpshift/conversation/activeconversation/model/Conversation;ILjava/lang/String;)V

    return-void
.end method

.method public onConversationInboxPollFailure()V
    .registers 3

    const-string v0, "Helpshift_ConvsatnlVM"

    const-string v1, "On conversation inbox poll failure"

    .line 757
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 760
    invoke-virtual {p0, v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showFakeTypingIndicator(Z)V

    .line 770
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {v0}, Lcom/helpshift/common/platform/Platform;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->awaitingUserInputForBotStep:Z

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentVM:Lcom/helpshift/conversation/viewmodel/SmartIntentVM;

    .line 772
    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/SmartIntentVM;->isSmartIntentUIVisible()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    .line 773
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isIssueInProgress()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isInBetweenBotExecution:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    .line 774
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 776
    :cond_3b
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$3;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$3;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    const/4 v0, 0x1

    .line 784
    iput-boolean v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isShowingPollFailureError:Z

    :cond_48
    return-void
.end method

.method public onConversationInboxPollSuccess()V
    .registers 3

    .line 790
    iget-boolean v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isShowingPollFailureError:Z

    if-eqz v0, :cond_11

    .line 791
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$4;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$4;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    const/4 v0, 0x0

    .line 799
    iput-boolean v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isShowingPollFailureError:Z

    :cond_11
    return-void
.end method

.method public onCreateConversationFailure(Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "Helpshift_ConvsatnlVM"

    const-string v1, "Error filing a pre-issue"

    .line 1477
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1478
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$20;

    invoke-direct {v0, p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$20;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V

    invoke-virtual {p1, v0}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public onCreateConversationSuccess(J)V
    .registers 3

    .line 1414
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->handlePreIssueCreationSuccess()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 2277
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->resetLastNotificationCountFetchTime()V

    return-void
.end method

.method public onHistoryLoadingError()V
    .registers 3

    .line 1768
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->historyLoadingViewState:Lcom/helpshift/widget/MutableHistoryLoadingViewState;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;->ERROR:Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableHistoryLoadingViewState;->setState(Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;)V

    return-void
.end method

.method public onHistoryLoadingStarted()V
    .registers 3

    .line 1773
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->historyLoadingViewState:Lcom/helpshift/widget/MutableHistoryLoadingViewState;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;->LOADING:Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableHistoryLoadingViewState;->setState(Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;)V

    return-void
.end method

.method public onHistoryLoadingSuccess()V
    .registers 3

    .line 1763
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->historyLoadingViewState:Lcom/helpshift/widget/MutableHistoryLoadingViewState;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;->NONE:Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableHistoryLoadingViewState;->setState(Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;)V

    return-void
.end method

.method public onIssueStatusChange(Lcom/helpshift/conversation/dto/IssueState;)V
    .registers 4

    .line 1377
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 1378
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->handleStateChangeForIssueMode(Lcom/helpshift/conversation/dto/IssueState;)V

    .line 1382
    iget-boolean p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isInBetweenBotExecution:Z

    if-eqz p1, :cond_19

    .line 1383
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->attachImageButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    invoke-virtual {p1, v1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    :cond_19
    return-void

    .line 1388
    :cond_1a
    sget-object v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$31;->$SwitchMap$com$helpshift$conversation$dto$IssueState:[I

    invoke-virtual {p1}, Lcom/helpshift/conversation/dto/IssueState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_35

    const/4 v0, 0x2

    if-eq p1, v0, :cond_29

    goto :goto_3f

    .line 1398
    :cond_29
    iput-boolean v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->awaitingUserInputForBotStep:Z

    .line 1399
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->removeOptionsMessageFromUI()V

    .line 1401
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->handleConversationRejectedState()V

    .line 1404
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateUIOnNewMessageReceived()V

    goto :goto_3f

    .line 1391
    :cond_35
    iput-boolean v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->awaitingUserInputForBotStep:Z

    .line 1392
    sget-object p1, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->START_NEW_CONVERSATION:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showStartNewConversation(Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;)V

    .line 1394
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateUIOnNewMessageReceived()V

    .line 1409
    :goto_3f
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateUserInputState()V

    return-void
.end method

.method public onListPickerSearchQueryChange(Ljava/lang/String;)V
    .registers 3

    .line 1693
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->listPickerVM:Lcom/helpshift/conversation/viewmodel/ListPickerVM;

    if-eqz v0, :cond_7

    .line 1694
    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->onListPickerSearchQueryChange(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onNetworkAvailable()V
    .registers 3

    .line 1328
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$16;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$16;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public onNetworkUnAvailable()V
    .registers 3

    .line 1347
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$17;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$17;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public onNewConversationButtonClicked()V
    .registers 5

    .line 1525
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->stopLiveUpdates()V

    .line 1526
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    .line 1527
    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->setStartNewConversationButtonClicked(Lcom/helpshift/conversation/activeconversation/model/Conversation;ZZ)V

    .line 1528
    iget-boolean v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showConversationHistory:Z

    if-eqz v0, :cond_40

    .line 1531
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->hideAllFooterWidgets()V

    .line 1534
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->getOpenConversationWithMessages()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    if-nez v0, :cond_24

    .line 1539
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->createLocalPreIssueConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 1543
    :cond_24
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->onNewConversationStarted(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 1545
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentVM:Lcom/helpshift/conversation/viewmodel/SmartIntentVM;

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/viewmodel/SmartIntentVM;->onNewConversationStarted(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 1548
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->pushChatScreenOpenAnalyticsEvent()V

    .line 1551
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->refreshVM()V

    .line 1552
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderMenuItems()V

    .line 1553
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->initMessagesList()V

    .line 1555
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    invoke-interface {v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->notifyRefreshList()V

    goto :goto_5f

    .line 1569
    :cond_40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1570
    iget-boolean v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showConversationHistory:Z

    iget-object v3, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-virtual {v3}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->shouldShowConversationHistory()Z

    move-result v3

    if-eq v1, v3, :cond_50

    goto :goto_51

    :cond_50
    const/4 v2, 0x0

    :goto_51
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "create_new_pre_issue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    invoke-interface {v1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->openFreshConversationScreen(Ljava/util/Map;)V

    :goto_5f
    return-void
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x0

    .line 249
    invoke-direct {p0, v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->setScreenVisibility(Z)V

    .line 250
    invoke-direct {p0, v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->setUserCanReadMessages(Z)V

    .line 251
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->markMessagesAsSeenOnExit()V

    .line 252
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->clearNotifications()V

    .line 253
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->resetIncrementMessageCountFlag()V

    .line 255
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    invoke-interface {v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->getReply()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->saveReplyText(Ljava/lang/String;)V

    return-void
.end method

.method public onRestoreSmartIntentInstanceState(Lcom/helpshift/conversation/smartintent/SmartIntentSavedState;)V
    .registers 3

    .line 2404
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentVM:Lcom/helpshift/conversation/viewmodel/SmartIntentVM;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/viewmodel/SmartIntentVM;->onRestoreInstanceState(Lcom/helpshift/conversation/smartintent/SmartIntentSavedState;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 240
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->refreshVM()V

    .line 241
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderMenuItems()V

    const/4 v0, 0x1

    .line 242
    invoke-direct {p0, v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->setScreenVisibility(Z)V

    .line 243
    invoke-direct {p0, v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->setUserCanReadMessages(Z)V

    .line 244
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->markMessagesAsSeenOnEntry()V

    .line 245
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->clearNotifications()V

    return-void
.end method

.method public onScrollJumperViewClicked()V
    .registers 1

    .line 2120
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->notifyRendererForScrollToBottom()V

    return-void
.end method

.method public onScrolledToBottom()V
    .registers 3

    .line 2124
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->scrollJumperViewState:Lcom/helpshift/widget/MutableScrollJumperViewState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableScrollJumperViewState;->setVisible(Z)V

    .line 2126
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->scrollJumperViewState:Lcom/helpshift/widget/MutableScrollJumperViewState;

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableScrollJumperViewState;->setShouldShowUnreadMessagesIndicator(Z)V

    return-void
.end method

.method public onScrolledToTop()V
    .registers 3

    .line 2135
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->historyLoadingViewState:Lcom/helpshift/widget/MutableHistoryLoadingViewState;

    invoke-virtual {v0}, Lcom/helpshift/widget/MutableHistoryLoadingViewState;->getState()Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    move-result-object v0

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;->NONE:Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    if-ne v0, v1, :cond_d

    .line 2136
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->loadHistoryMessagesInternal()V

    :cond_d
    return-void
.end method

.method public onScrolling()V
    .registers 3

    .line 2130
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->scrollJumperViewState:Lcom/helpshift/widget/MutableScrollJumperViewState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableScrollJumperViewState;->setVisible(Z)V

    return-void
.end method

.method public onSkipClick()V
    .registers 4

    .line 1026
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateLastUserActivityTime()V

    .line 1028
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->botMessageDM:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 1029
    instance-of v1, v0, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;

    if-eqz v1, :cond_19

    .line 1033
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->clearUserReplyDraft()V

    .line 1036
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->disableUserInputOptions()V

    .line 1038
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v2, Lcom/helpshift/conversation/viewmodel/ConversationalVM$12;

    invoke-direct {v2, p0, v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$12;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    invoke-virtual {v1, v2}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    .line 1057
    :cond_19
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    invoke-interface {v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->hideSkipButton()V

    return-void
.end method

.method public onSmartIntentBottomSheetCollapsed()V
    .registers 2

    .line 2369
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentVM:Lcom/helpshift/conversation/viewmodel/SmartIntentVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/SmartIntentVM;->onSmartIntentBottomSheetCollapsed()V

    return-void
.end method

.method public onSmartIntentBottomSheetExpanded()V
    .registers 2

    .line 2373
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentVM:Lcom/helpshift/conversation/viewmodel/SmartIntentVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/SmartIntentVM;->onSmartIntentBottomSheetExpanded()V

    return-void
.end method

.method public onSmartIntentSendButtonClick()V
    .registers 3

    .line 2393
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    if-eqz v0, :cond_d

    .line 2394
    invoke-interface {v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->getSmartIntentUserQuery()Ljava/lang/String;

    move-result-object v0

    .line 2395
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentVM:Lcom/helpshift/conversation/viewmodel/SmartIntentVM;

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/viewmodel/SmartIntentVM;->onSmartIntentSendButtonClick(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onSmartIntentTextChanged(Ljava/lang/CharSequence;)V
    .registers 3

    .line 2389
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentVM:Lcom/helpshift/conversation/viewmodel/SmartIntentVM;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/viewmodel/SmartIntentVM;->onSmartIntentTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onUIMessageListUpdated()V
    .registers 1

    .line 1605
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateReplyBoxVisibility()V

    return-void
.end method

.method protected prefillReplyBox()V
    .registers 4

    .line 432
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->getUserReplyText()Ljava/lang/String;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v1

    .line 437
    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v2, v1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->containsAtleastOneUserMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 438
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->getConversationArchivalPrefillText()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 441
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v1, "conversationPrefillText"

    invoke-virtual {v0, v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2e
    if-eqz v0, :cond_35

    .line 450
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyFieldViewState:Lcom/helpshift/widget/MutableReplyFieldViewState;

    invoke-virtual {v1, v0}, Lcom/helpshift/widget/MutableReplyFieldViewState;->setReplyText(Ljava/lang/String;)V

    :cond_35
    return-void
.end method

.method public prependConversations(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;Z)V"
        }
    .end annotation

    .line 1735
    invoke-static {p1}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-nez p2, :cond_13

    .line 1742
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->messageListVM:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->prependMessages(Ljava/util/List;Z)V

    :cond_13
    return-void

    .line 1747
    :cond_14
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getUIConversations()Ljava/util/List;

    move-result-object v0

    .line 1750
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1751
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 1752
    invoke-direct {p0, v2}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getUIMessagesForHistory(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_23

    .line 1755
    :cond_37
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->messageListVM:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    if-eqz p1, :cond_43

    .line 1756
    invoke-virtual {p1, v0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->updateUIConversationOrder(Ljava/util/List;)V

    .line 1757
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->messageListVM:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    invoke-virtual {p1, v1, p2}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->prependMessages(Ljava/util/List;Z)V

    :cond_43
    return-void
.end method

.method public pushChatScreenOpenAnalyticsEvent()V
    .registers 6

    .line 2408
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 2409
    iget-object v1, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    .line 2410
    iget-object v2, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    .line 2411
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2413
    iget-object v4, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    invoke-static {v4}, Lcom/helpshift/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2414
    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    const-string v4, "acid"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2416
    :cond_1e
    invoke-static {v1}, Lcom/helpshift/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "id"

    .line 2417
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2418
    sget-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->OPEN_ISSUE:Lcom/helpshift/analytics/AnalyticsEventType;

    invoke-direct {p0, v0, v3}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->pushAnalyticsEvent(Lcom/helpshift/analytics/AnalyticsEventType;Ljava/util/Map;)V

    goto :goto_3f

    .line 2421
    :cond_2f
    invoke-static {v2}, Lcom/helpshift/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "preissue_id"

    .line 2422
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2424
    :cond_3a
    sget-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->REPORTED_ISSUE:Lcom/helpshift/analytics/AnalyticsEventType;

    invoke-direct {p0, v0, v3}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->pushAnalyticsEvent(Lcom/helpshift/analytics/AnalyticsEventType;Ljava/util/Map;)V

    :goto_3f
    return-void
.end method

.method public refreshAll()V
    .registers 2

    .line 2102
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    if-eqz v0, :cond_7

    .line 2103
    invoke-interface {v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->notifyRefreshList()V

    :cond_7
    return-void
.end method

.method public refreshVM()V
    .registers 6

    .line 601
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 604
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateConversationExpiryProperties(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 610
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->shouldShowReplyBoxOnConversationRejected()Z

    move-result v1

    .line 611
    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->widgetGateway:Lcom/helpshift/widget/WidgetGateway;

    iget-object v3, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

    invoke-virtual {v2, v3, v0, v1}, Lcom/helpshift/widget/WidgetGateway;->updateReplyBoxWidget(Lcom/helpshift/widget/MutableReplyBoxViewState;Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)V

    .line 613
    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->widgetGateway:Lcom/helpshift/widget/WidgetGateway;

    iget-object v3, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->confirmationBoxViewState:Lcom/helpshift/widget/MutableBaseViewState;

    invoke-virtual {v2, v3, v0}, Lcom/helpshift/widget/WidgetGateway;->updateConfirmationBoxViewState(Lcom/helpshift/widget/MutableBaseViewState;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 614
    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->widgetGateway:Lcom/helpshift/widget/WidgetGateway;

    iget-object v3, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationFooterViewState:Lcom/helpshift/widget/MutableConversationFooterViewState;

    invoke-virtual {v2, v3, v0, v1}, Lcom/helpshift/widget/WidgetGateway;->updateConversationFooterViewState(Lcom/helpshift/widget/MutableConversationFooterViewState;Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)V

    .line 618
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

    invoke-virtual {v1}, Lcom/helpshift/widget/MutableReplyBoxViewState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x2

    goto :goto_2f

    :cond_2e
    const/4 v1, -0x1

    .line 619
    :goto_2f
    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v2, v1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->setConversationViewState(I)V

    .line 622
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v1, p0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->registerMessagesObserver(Lcom/helpshift/util/HSListObserver;)V

    .line 625
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v1, p0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->setConversationVMCallback(Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;)V

    .line 629
    iget-object v1, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_53

    iget-object v1, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    if-nez v1, :cond_53

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    .line 630
    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getAllConversations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_5c

    .line 631
    :cond_53
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->getConversationInboxPoller()Lcom/helpshift/conversation/ConversationInboxPoller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/conversation/ConversationInboxPoller;->startChatPoller()V

    .line 635
    :cond_5c
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->isSynced(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v1

    if-nez v1, :cond_a3

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    .line 636
    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->containsAtleastOneUserMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 637
    iget-object v1, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    iget-object v3, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v3}, Lcom/helpshift/util/HSObservableList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/helpshift/util/HSObservableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 638
    instance-of v2, v1, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    if-eqz v2, :cond_a2

    .line 639
    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    .line 640
    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->getState()Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    move-result-object v2

    sget-object v3, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->SENT:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    if-eq v2, v3, :cond_8f

    .line 641
    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/helpshift/widget/MutableReplyBoxViewState;->setVisible(Z)V

    .line 646
    :cond_8f
    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/helpshift/conversation/domainmodel/ConversationController;->isPreissueCreationInProgress(J)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 647
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->SENDING:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->setState(Lcom/helpshift/conversation/activeconversation/message/UserMessageState;)V

    :cond_a2
    return-void

    .line 654
    :cond_a3
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->isSynced(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v1

    if-nez v1, :cond_d1

    .line 655
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-virtual {v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->shouldAutoFillPreissueFirstMessage()Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 657
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v3, "initialUserMessageToAutoSendInPreissue"

    invoke-virtual {v1, v3}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 658
    invoke-static {v1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d1

    const-string v3, "Helpshift_ConvsatnlVM"

    const-string v4, "Auto-filing preissue with client set user message."

    .line 659
    invoke-static {v3, v4}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v3, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v3, v0, v2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateIsAutoFilledPreissueFlag(Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)V

    .line 661
    invoke-virtual {p0, v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->createPreIssueViaConversationalFlow(Ljava/lang/String;)V

    return-void

    .line 668
    :cond_d1
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentDM:Lcom/helpshift/conversation/smartintent/SmartIntentDM;

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/smartintent/SmartIntentDM;->shouldShowSmartIntent(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 670
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentVM:Lcom/helpshift/conversation/viewmodel/SmartIntentVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/SmartIntentVM;->showSmartIntentUI()V

    return-void

    .line 674
    :cond_df
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->isSynced(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 676
    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-direct {p0, v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->evaluateBotMessages(Ljava/util/Collection;)Ljava/util/List;

    .line 682
    :cond_ec
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateReplyBoxVisibility()V

    return-void
.end method

.method public renderMenuItems()V
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyFieldViewState:Lcom/helpshift/widget/MutableReplyFieldViewState;

    invoke-virtual {v0}, Lcom/helpshift/widget/MutableReplyFieldViewState;->getReplyText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 288
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    invoke-virtual {v1, v0}, Lcom/helpshift/widget/MutableBaseViewState;->setEnabled(Z)V

    .line 289
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateAttachmentButtonViewState()V

    return-void
.end method

.method protected resetDefaultMenuItemsVisibility()V
    .registers 4

    .line 365
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->attachImageButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->widgetGateway:Lcom/helpshift/widget/WidgetGateway;

    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    .line 366
    invoke-virtual {v2}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/helpshift/widget/WidgetGateway;->getDefaultVisibilityForAttachImageButton(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v1

    .line 365
    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    return-void
.end method

.method public retryHistoryLoadingMessages()V
    .registers 3

    .line 2142
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->historyLoadingViewState:Lcom/helpshift/widget/MutableHistoryLoadingViewState;

    invoke-virtual {v0}, Lcom/helpshift/widget/MutableHistoryLoadingViewState;->getState()Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    move-result-object v0

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;->ERROR:Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    if-ne v0, v1, :cond_d

    .line 2143
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->loadHistoryMessagesInternal()V

    :cond_d
    return-void
.end method

.method public retryMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 4

    .line 944
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$10;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$10;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public saveReplyText(Ljava/lang/String;)V
    .registers 5

    .line 372
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v2, "conversationPrefillText"

    invoke-virtual {v1, v2}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    .line 374
    invoke-virtual {v1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->getConversationArchivalPrefillText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_23

    :cond_21
    const/4 v1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v1, 0x1

    :goto_24
    if-eqz v1, :cond_36

    .line 375
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->containsAtleastOneUserMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 376
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->saveUserReplyText(Ljava/lang/String;)V

    goto :goto_40

    .line 379
    :cond_36
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyFieldViewState:Lcom/helpshift/widget/MutableReplyFieldViewState;

    invoke-virtual {v0, p1}, Lcom/helpshift/widget/MutableReplyFieldViewState;->setReplyText(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->saveUserReplyText(Ljava/lang/String;)V

    :goto_40
    return-void
.end method

.method public sendAttachment(Lcom/helpshift/conversation/dto/AttachmentPickerFile;Ljava/lang/String;)V
    .registers 5

    .line 1778
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$24;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Lcom/helpshift/conversation/dto/AttachmentPickerFile;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public sendTextMessage()V
    .registers 4

    .line 833
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    invoke-interface {v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->getReply()Ljava/lang/String;

    move-result-object v0

    .line 835
    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    .line 839
    :cond_d
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/helpshift/conversation/domainmodel/ConversationController;->setPersistMessageBox(Z)V

    .line 840
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->sendTextMessage(Ljava/lang/String;)V

    return-void
.end method

.method protected sendTextMessage(Ljava/lang/String;)V
    .registers 5

    .line 867
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateLastUserActivityTime()V

    .line 869
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 870
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->containsAtleastOneUserMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 872
    invoke-static {p1}, Lcom/helpshift/util/StringUtils;->userVisibleCharacterCount(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-virtual {v2}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getMinimumConversationDescriptionLength()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 873
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->showReplyValidationFailedError(I)V

    return-void

    .line 879
    :cond_24
    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 880
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->clearReply()V

    .line 881
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->createPreIssueViaConversationalFlow(Ljava/lang/String;)V

    return-void

    .line 886
    :cond_33
    iget-boolean v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isInBetweenBotExecution:Z

    if-nez v0, :cond_3b

    .line 887
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->sendNormalTextMessage(Ljava/lang/String;)V

    return-void

    .line 892
    :cond_3b
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->botMessageDM:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 893
    instance-of v1, v0, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;

    if-nez v1, :cond_45

    .line 894
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->sendNormalTextMessage(Ljava/lang/String;)V

    return-void

    .line 898
    :cond_45
    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;

    .line 899
    iget-object v1, v0, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/TextInput;

    .line 900
    iget-object v2, v0, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/TextInput;

    invoke-virtual {v2, p1}, Lcom/helpshift/conversation/activeconversation/message/input/TextInput;->validate(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 903
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    iget v0, v1, Lcom/helpshift/conversation/activeconversation/message/input/TextInput;->keyboard:I

    invoke-interface {p1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->showReplyValidationFailedError(I)V

    return-void

    .line 907
    :cond_59
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    invoke-interface {v1}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->hideReplyValidationFailedError()V

    .line 910
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->disableUserInputOptions()V

    .line 911
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->clearReply()V

    .line 913
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v2, Lcom/helpshift/conversation/viewmodel/ConversationalVM$8;

    invoke-direct {v2, p0, p1, v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$8;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;)V

    invoke-virtual {v1, v2}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public setConversationViewState(I)V
    .registers 3

    .line 1962
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->setConversationViewState(I)V

    return-void
.end method

.method public shouldShowUnreadMessagesIndicator()Z
    .registers 2

    .line 385
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->scrollJumperViewState:Lcom/helpshift/widget/MutableScrollJumperViewState;

    invoke-virtual {v0}, Lcom/helpshift/widget/MutableScrollJumperViewState;->shouldShowUnreadMessagesIndicator()Z

    move-result v0

    return v0
.end method

.method public showEmptyListPickerView()V
    .registers 2

    .line 1676
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    invoke-interface {v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->showEmptyListPickerView()V

    return-void
.end method

.method showFakeTypingIndicator(Z)V
    .registers 4

    .line 809
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$5;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$5;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Z)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public showFakeTypingIndicatorFromSmartIntent()V
    .registers 2

    const/4 v0, 0x1

    .line 2282
    invoke-virtual {p0, v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showFakeTypingIndicator(Z)V

    return-void
.end method

.method public showPickerClearButton()V
    .registers 2

    .line 1706
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    invoke-interface {v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->showPickerClearButton()V

    return-void
.end method

.method public showReplyFooterFromSmartIntent()V
    .registers 3

    .line 2293
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM$28;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM$28;-><init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public showSmartIntentReplyValidationFailedError()V
    .registers 2

    .line 2328
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    if-eqz v0, :cond_7

    .line 2329
    invoke-interface {v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->showSmartIntentReplyValidationFailedError()V

    :cond_7
    return-void
.end method

.method public showSmartIntentUI(Lcom/helpshift/conversation/smartintent/SmartIntentCollapsedRootViewState;)V
    .registers 4

    .line 2335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showSmartIntentUI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Helpshift_ConvsatnlVM"

    invoke-static {v1, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2336
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    if-eqz v0, :cond_1d

    .line 2337
    invoke-interface {v0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->showSmartIntentView(Lcom/helpshift/conversation/smartintent/SmartIntentCollapsedRootViewState;)V

    :cond_1d
    return-void
.end method

.method protected showStartNewConversation(Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;)V
    .registers 4

    .line 2231
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableReplyBoxViewState;->setVisible(Z)V

    .line 2232
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateAttachmentButtonViewState()V

    .line 2233
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->confirmationBoxViewState:Lcom/helpshift/widget/MutableBaseViewState;

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    .line 2234
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationFooterViewState:Lcom/helpshift/widget/MutableConversationFooterViewState;

    invoke-virtual {v0, p1}, Lcom/helpshift/widget/MutableConversationFooterViewState;->setState(Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;)V

    return-void
.end method

.method public startLiveUpdates()V
    .registers 2

    .line 2027
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->startLiveUpdates()V

    return-void
.end method

.method public stopLiveUpdates()V
    .registers 2

    .line 2031
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->stopLiveUpdates()V

    return-void
.end method

.method public toggleReplySendButton(Z)V
    .registers 3

    .line 2238
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    invoke-virtual {v0, p1}, Lcom/helpshift/widget/MutableBaseViewState;->setEnabled(Z)V

    return-void
.end method

.method public unregisterRenderer()V
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->unregisterConversationVMCallback()V

    .line 353
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->messageListVM:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 354
    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->unregisterMessageListVMCallback()V

    .line 355
    iput-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->messageListVM:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    .line 357
    :cond_f
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->smartIntentVM:Lcom/helpshift/conversation/viewmodel/SmartIntentVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/SmartIntentVM;->onDestroy()V

    .line 359
    iput-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    .line 361
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getAuthenticationFailureDM()Lcom/helpshift/account/AuthenticationFailureDM;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/helpshift/account/AuthenticationFailureDM;->unregisterListener(Lcom/helpshift/account/AuthenticationFailureDM$AuthenticationFailureObserver;)V

    return-void
.end method

.method public update(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 4

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update called : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Helpshift_ConvsatnlVM"

    invoke-static {v1, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateUserInputState()V

    .line 1100
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->messageListVM:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    if-eqz v0, :cond_20

    .line 1101
    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->insertOrUpdateMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    :cond_20
    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .registers 2

    .line 113
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->update(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    return-void
.end method

.method public updateLastUserActivityTime()V
    .registers 5

    .line 2040
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    .line 2041
    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v1

    .line 2042
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2041
    invoke-virtual {v0, v1, v2, v3}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateLastUserActivityTime(Lcom/helpshift/conversation/activeconversation/model/Conversation;J)V

    return-void
.end method

.method public updateListPickerOptions(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/viewmodel/OptionUIModel;",
            ">;)V"
        }
    .end annotation

    .line 1665
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    invoke-interface {v0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->updateListPickerOptions(Ljava/util/List;)V

    return-void
.end method

.method public updateMessages(II)V
    .registers 4

    .line 2095
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    if-eqz v0, :cond_7

    .line 2096
    invoke-interface {v0, p1, p2}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->updateMessages(II)V

    :cond_7
    return-void
.end method

.method public updateSmartIntentView(Lcom/helpshift/conversation/smartintent/BaseSmartIntentViewState;)V
    .registers 4

    .line 2343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSmartIntentView : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Helpshift_ConvsatnlVM"

    invoke-static {v1, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    if-eqz v0, :cond_1d

    .line 2345
    invoke-interface {v0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->updateSmartIntentView(Lcom/helpshift/conversation/smartintent/BaseSmartIntentViewState;)V

    :cond_1d
    return-void
.end method

.method protected updateTypingIndicatorStatus(Z)V
    .registers 2

    if-eqz p1, :cond_10

    .line 2172
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    invoke-interface {p1}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->showAgentTypingIndicator()V

    .line 2174
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->scrollJumperViewState:Lcom/helpshift/widget/MutableScrollJumperViewState;

    invoke-virtual {p1}, Lcom/helpshift/widget/MutableScrollJumperViewState;->isVisible()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    goto :goto_16

    .line 2177
    :cond_10
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    invoke-interface {p1}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->hideAgentTypingIndicator()V

    const/4 p1, 0x0

    :goto_16
    if-eqz p1, :cond_1b

    .line 2181
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->notifyRendererForScrollToBottom()V

    :cond_1b
    return-void
.end method

.method protected updateUIOnNewMessageReceived()V
    .registers 2

    .line 2084
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->scrollJumperViewState:Lcom/helpshift/widget/MutableScrollJumperViewState;

    invoke-virtual {v0}, Lcom/helpshift/widget/MutableScrollJumperViewState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2086
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showUnreadMessagesIndicator()V

    goto :goto_f

    .line 2089
    :cond_c
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->notifyRendererForScrollToBottom()V

    :goto_f
    return-void
.end method

.method public updateUnreadMessageCountIndicator(Z)V
    .registers 3

    .line 2198
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->scrollJumperViewState:Lcom/helpshift/widget/MutableScrollJumperViewState;

    invoke-virtual {v0, p1}, Lcom/helpshift/widget/MutableScrollJumperViewState;->setShouldShowUnreadMessagesIndicator(Z)V

    return-void
.end method
