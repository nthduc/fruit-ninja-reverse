.class public Lcom/helpshift/account/domainmodel/UserLoginManager;
.super Ljava/lang/Object;
.source "UserLoginManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpshift_ULoginM"


# instance fields
.field private coreApi:Lcom/helpshift/CoreApi;

.field private domain:Lcom/helpshift/common/domain/Domain;

.field private platform:Lcom/helpshift/common/platform/Platform;


# direct methods
.method public constructor <init>(Lcom/helpshift/CoreApi;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->coreApi:Lcom/helpshift/CoreApi;

    .line 27
    iput-object p2, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->domain:Lcom/helpshift/common/domain/Domain;

    .line 28
    iput-object p3, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->platform:Lcom/helpshift/common/platform/Platform;

    return-void
.end method

.method private cleanUpActiveUser()V
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getConversationInboxManagerDM()Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;->getActiveConversationInboxDM()Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->clearPushNotifications()V

    .line 108
    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->getConversationInboxPoller()Lcom/helpshift/conversation/ConversationInboxPoller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/conversation/ConversationInboxPoller;->stop()V

    return-void
.end method

.method private clearConfigRouteETag()V
    .registers 3

    .line 228
    iget-object v0, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {v0}, Lcom/helpshift/common/platform/Platform;->getNetworkRequestDAO()Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    move-result-object v0

    sget-object v1, Lcom/helpshift/common/domain/network/NetworkConstants;->SUPPORT_CONFIG_ROUTE:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/helpshift/common/platform/network/NetworkRequestDAO;->removeETag(Ljava/lang/String;)V

    return-void
.end method

.method private deleteUser(Lcom/helpshift/account/domainmodel/UserDM;)Z
    .registers 6

    .line 129
    iget-object v0, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->coreApi:Lcom/helpshift/CoreApi;

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getUserManagerDM()Lcom/helpshift/account/domainmodel/UserManagerDM;

    move-result-object v0

    .line 130
    invoke-virtual {v0, p1}, Lcom/helpshift/account/domainmodel/UserManagerDM;->deleteUser(Lcom/helpshift/account/domainmodel/UserDM;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 133
    iget-object v1, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {v1}, Lcom/helpshift/common/platform/Platform;->getRedactionDAO()Lcom/helpshift/redaction/RedactionDAO;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/helpshift/redaction/RedactionDAO;->deleteRedactionDetail(J)V

    .line 135
    iget-object v1, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v1}, Lcom/helpshift/common/domain/Domain;->getConversationInboxManagerDM()Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;->deleteConversations(Lcom/helpshift/account/domainmodel/UserDM;)V

    .line 137
    iget-object v1, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v1}, Lcom/helpshift/common/domain/Domain;->getSmartIntentDM()Lcom/helpshift/conversation/smartintent/SmartIntentDM;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/helpshift/conversation/smartintent/SmartIntentDM;->clearUserData(Lcom/helpshift/account/domainmodel/UserDM;)V

    :cond_2f
    return v0
.end method

.method private setUpActiveUser()V
    .registers 5

    .line 112
    iget-object v0, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getConversationInboxManagerDM()Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;->getActiveConversationInboxDM()Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->showPushNotifications()V

    .line 117
    iget-object v1, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->coreApi:Lcom/helpshift/CoreApi;

    invoke-interface {v1}, Lcom/helpshift/CoreApi;->getUserManagerDM()Lcom/helpshift/account/domainmodel/UserManagerDM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/account/domainmodel/UserManagerDM;->getActiveUserSetupDM()Lcom/helpshift/account/domainmodel/UserSetupDM;

    move-result-object v1

    .line 119
    sget-object v2, Lcom/helpshift/account/domainmodel/UserSetupState;->COMPLETED:Lcom/helpshift/account/domainmodel/UserSetupState;

    invoke-virtual {v1}, Lcom/helpshift/account/domainmodel/UserSetupDM;->getState()Lcom/helpshift/account/domainmodel/UserSetupState;

    move-result-object v3

    if-ne v2, v3, :cond_28

    .line 120
    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->getConversationInboxPoller()Lcom/helpshift/conversation/ConversationInboxPoller;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/ConversationInboxPoller;->startAppPoller(Z)V

    goto :goto_2b

    .line 124
    :cond_28
    invoke-virtual {v1}, Lcom/helpshift/account/domainmodel/UserSetupDM;->startSetup()V

    :goto_2b
    return-void
.end method

.method private updateUserNameAndAuthToken(Lcom/helpshift/HelpshiftUser;Lcom/helpshift/account/domainmodel/UserManagerDM;)V
    .registers 7

    .line 89
    invoke-virtual {p2}, Lcom/helpshift/account/domainmodel/UserManagerDM;->getActiveUser()Lcom/helpshift/account/domainmodel/UserDM;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserDM;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserDM;->getName()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {p1}, Lcom/helpshift/HelpshiftUser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/helpshift/util/StringUtils;->isNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 94
    invoke-virtual {p1}, Lcom/helpshift/HelpshiftUser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/helpshift/account/domainmodel/UserManagerDM;->updateUserName(Lcom/helpshift/account/domainmodel/UserDM;Ljava/lang/String;)V

    .line 97
    :cond_1d
    invoke-virtual {p1}, Lcom/helpshift/HelpshiftUser;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/util/StringUtils;->isNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 98
    invoke-virtual {p1}, Lcom/helpshift/HelpshiftUser;->getAuthToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/helpshift/account/domainmodel/UserManagerDM;->updateAuthToken(Lcom/helpshift/account/domainmodel/UserDM;Ljava/lang/String;)V

    :cond_2e
    return-void
.end method


# virtual methods
.method public clearAnonymousUser()Z
    .registers 4

    .line 143
    iget-object v0, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->coreApi:Lcom/helpshift/CoreApi;

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getUserManagerDM()Lcom/helpshift/account/domainmodel/UserManagerDM;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->coreApi:Lcom/helpshift/CoreApi;

    invoke-interface {v1}, Lcom/helpshift/CoreApi;->getUserManagerDM()Lcom/helpshift/account/domainmodel/UserManagerDM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/account/domainmodel/UserManagerDM;->getAnonymousUser()Lcom/helpshift/account/domainmodel/UserDM;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 147
    invoke-virtual {v1}, Lcom/helpshift/account/domainmodel/UserDM;->isActiveUser()Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v0, "Helpshift_ULoginM"

    const-string v1, "clearAnonymousUser should be called when a logged-in user is active"

    .line 148
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 152
    :cond_21
    invoke-direct {p0, v1}, Lcom/helpshift/account/domainmodel/UserLoginManager;->deleteUser(Lcom/helpshift/account/domainmodel/UserDM;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 154
    invoke-virtual {v0, v1}, Lcom/helpshift/account/domainmodel/UserManagerDM;->clearAnonymousUser(Lcom/helpshift/account/domainmodel/UserDM;)V

    :cond_2a
    const/4 v0, 0x1

    return v0
.end method

.method public clearPersonallyIdentifiableInformation()V
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->coreApi:Lcom/helpshift/CoreApi;

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->isSDKSessionActive()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "Helpshift_ULoginM"

    const-string v1, "clear PII should not be called after starting a Helpshift session"

    .line 193
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 200
    :cond_10
    iget-object v0, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->coreApi:Lcom/helpshift/CoreApi;

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getUserManagerDM()Lcom/helpshift/account/domainmodel/UserManagerDM;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserManagerDM;->getActiveUser()Lcom/helpshift/account/domainmodel/UserDM;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Lcom/helpshift/account/domainmodel/UserDM;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 203
    invoke-virtual {p0}, Lcom/helpshift/account/domainmodel/UserLoginManager;->logout()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 206
    invoke-direct {p0, v1}, Lcom/helpshift/account/domainmodel/UserLoginManager;->deleteUser(Lcom/helpshift/account/domainmodel/UserDM;)Z

    .line 208
    iget-object v0, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {v0}, Lcom/helpshift/common/platform/Platform;->getCampaignModuleAPIs()Lcom/helpshift/providers/ICampaignsModuleAPIs;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 211
    invoke-interface {v0}, Lcom/helpshift/providers/ICampaignsModuleAPIs;->logout()V

    goto :goto_4f

    .line 218
    :cond_39
    invoke-virtual {v0, v1}, Lcom/helpshift/account/domainmodel/UserManagerDM;->resetNameAndEmail(Lcom/helpshift/account/domainmodel/UserDM;)V

    .line 219
    iget-object v0, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->coreApi:Lcom/helpshift/CoreApi;

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getConversationController()Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->saveName(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->coreApi:Lcom/helpshift/CoreApi;

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getConversationController()Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->saveEmail(Ljava/lang/String;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public login(Lcom/helpshift/HelpshiftUser;)Z
    .registers 7

    .line 32
    iget-object v0, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->coreApi:Lcom/helpshift/CoreApi;

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getUserManagerDM()Lcom/helpshift/account/domainmodel/UserManagerDM;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Lcom/helpshift/account/domainmodel/UserManagerDM;->isActiveUser(Lcom/helpshift/HelpshiftUser;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1f

    .line 46
    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserManagerDM;->getActiveUser()Lcom/helpshift/account/domainmodel/UserDM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/account/domainmodel/UserDM;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lcom/helpshift/HelpshiftUser;->getAuthToken()Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-static {v1, v4}, Lcom/helpshift/util/StringUtils;->isNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_52

    .line 51
    :cond_1f
    iget-object v1, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->coreApi:Lcom/helpshift/CoreApi;

    invoke-interface {v1}, Lcom/helpshift/CoreApi;->isSDKSessionActive()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string p1, "Helpshift_ULoginM"

    const-string v0, "Login should be called before starting a Helpshift session"

    .line 52
    invoke-static {p1, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 60
    :cond_2f
    invoke-direct {p0}, Lcom/helpshift/account/domainmodel/UserLoginManager;->cleanUpActiveUser()V

    .line 62
    invoke-virtual {v0, p1}, Lcom/helpshift/account/domainmodel/UserManagerDM;->login(Lcom/helpshift/HelpshiftUser;)V

    .line 63
    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserManagerDM;->getInactiveLoggedInUsers()Ljava/util/List;

    move-result-object v1

    .line 64
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/account/domainmodel/UserDM;

    .line 65
    invoke-direct {p0, v2}, Lcom/helpshift/account/domainmodel/UserLoginManager;->deleteUser(Lcom/helpshift/account/domainmodel/UserDM;)Z

    goto :goto_3d

    .line 68
    :cond_4d
    invoke-direct {p0}, Lcom/helpshift/account/domainmodel/UserLoginManager;->setUpActiveUser()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 73
    :goto_52
    invoke-direct {p0, p1, v0}, Lcom/helpshift/account/domainmodel/UserLoginManager;->updateUserNameAndAuthToken(Lcom/helpshift/HelpshiftUser;Lcom/helpshift/account/domainmodel/UserManagerDM;)V

    if-eqz v2, :cond_5a

    .line 77
    invoke-direct {p0}, Lcom/helpshift/account/domainmodel/UserLoginManager;->clearConfigRouteETag()V

    :cond_5a
    if-eqz v1, :cond_65

    .line 82
    iget-object p1, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {p1}, Lcom/helpshift/common/domain/Domain;->getAutoRetryFailedEventDM()Lcom/helpshift/common/AutoRetryFailedEventDM;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpshift/common/AutoRetryFailedEventDM;->onUserAuthenticationUpdated()V

    :cond_65
    return v3
.end method

.method public logout()Z
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->coreApi:Lcom/helpshift/CoreApi;

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->isSDKSessionActive()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "Helpshift_ULoginM"

    const-string v1, "Logout should be called before starting a Helpshift session"

    .line 162
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 166
    :cond_11
    iget-object v0, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->coreApi:Lcom/helpshift/CoreApi;

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getUserManagerDM()Lcom/helpshift/account/domainmodel/UserManagerDM;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserManagerDM;->getActiveUser()Lcom/helpshift/account/domainmodel/UserDM;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 168
    invoke-virtual {v1}, Lcom/helpshift/account/domainmodel/UserDM;->isAnonymousUser()Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x1

    return v0

    .line 173
    :cond_25
    invoke-direct {p0}, Lcom/helpshift/account/domainmodel/UserLoginManager;->cleanUpActiveUser()V

    .line 175
    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserManagerDM;->loginWithAnonymousUser()Z

    move-result v0

    .line 177
    invoke-direct {p0}, Lcom/helpshift/account/domainmodel/UserLoginManager;->setUpActiveUser()V

    if-eqz v0, :cond_3d

    .line 181
    invoke-direct {p0}, Lcom/helpshift/account/domainmodel/UserLoginManager;->clearConfigRouteETag()V

    .line 183
    iget-object v1, p0, Lcom/helpshift/account/domainmodel/UserLoginManager;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v1}, Lcom/helpshift/common/domain/Domain;->getAutoRetryFailedEventDM()Lcom/helpshift/common/AutoRetryFailedEventDM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/common/AutoRetryFailedEventDM;->onUserAuthenticationUpdated()V

    :cond_3d
    return v0
.end method
