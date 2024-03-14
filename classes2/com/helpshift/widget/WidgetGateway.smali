.class public Lcom/helpshift/widget/WidgetGateway;
.super Ljava/lang/Object;
.source "WidgetGateway.java"


# instance fields
.field private final config:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

.field private final conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;


# direct methods
.method public constructor <init>(Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;Lcom/helpshift/conversation/domainmodel/ConversationController;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/helpshift/widget/WidgetGateway;->config:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    .line 44
    iput-object p2, p0, Lcom/helpshift/widget/WidgetGateway;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    return-void
.end method

.method private getVisibilityForNewConversationAttachImageButton(Lcom/helpshift/widget/MutableImageAttachmentViewState;)Z
    .registers 4

    .line 187
    invoke-virtual {p0}, Lcom/helpshift/widget/WidgetGateway;->getDefaultVisibilityForAttachImageButtonNewConversation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 188
    invoke-virtual {p1}, Lcom/helpshift/widget/MutableImageAttachmentViewState;->getImagePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 189
    iget-object p1, p0, Lcom/helpshift/widget/WidgetGateway;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {p1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->isCreateConversationInProgress()Z

    move-result p1

    if-nez p1, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method private isEmailRequired()Z
    .registers 5

    .line 272
    iget-object v0, p0, Lcom/helpshift/widget/WidgetGateway;->config:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v1, "fullPrivacy"

    invoke-virtual {v0, v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 276
    :cond_c
    iget-object v0, p0, Lcom/helpshift/widget/WidgetGateway;->config:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v2, "requireNameAndEmail"

    invoke-virtual {v0, v2}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    return v2

    .line 281
    :cond_18
    iget-object v0, p0, Lcom/helpshift/widget/WidgetGateway;->config:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v3, "profileFormEnable"

    invoke-virtual {v0, v3}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/helpshift/widget/WidgetGateway;->config:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v3, "requireEmail"

    invoke-virtual {v0, v3}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    return v2

    :cond_2d
    return v1
.end method

.method private isProfileFormVisible(Lcom/helpshift/widget/TextViewState;Lcom/helpshift/widget/TextViewState;)Z
    .registers 9

    .line 312
    iget-object v0, p0, Lcom/helpshift/widget/WidgetGateway;->config:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v1, "fullPrivacy"

    invoke-virtual {v0, v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 316
    :cond_c
    iget-object v0, p0, Lcom/helpshift/widget/WidgetGateway;->config:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v2, "profileFormEnable"

    invoke-virtual {v0, v2}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 317
    iget-object v2, p0, Lcom/helpshift/widget/WidgetGateway;->config:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v3, "hideNameAndEmail"

    invoke-virtual {v2, v3}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 318
    invoke-virtual {p1}, Lcom/helpshift/widget/TextViewState;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v3, 0x1

    if-lez p1, :cond_29

    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    .line 319
    :goto_2a
    invoke-virtual {p2}, Lcom/helpshift/widget/TextViewState;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_36

    const/4 p2, 0x1

    goto :goto_37

    :cond_36
    const/4 p2, 0x0

    .line 320
    :goto_37
    iget-object v4, p0, Lcom/helpshift/widget/WidgetGateway;->config:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v5, "requireNameAndEmail"

    invoke-virtual {v4, v5}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    if-eqz v2, :cond_49

    if-eqz p1, :cond_47

    if-nez p2, :cond_48

    :cond_47
    const/4 v1, 0x1

    :cond_48
    return v1

    :cond_49
    if-eqz v0, :cond_5c

    if-eqz v2, :cond_5b

    .line 326
    iget-object v0, p0, Lcom/helpshift/widget/WidgetGateway;->config:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v2, "requireEmail"

    .line 328
    invoke-virtual {v0, v2}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    if-eqz p2, :cond_5b

    :cond_59
    if-nez p1, :cond_5c

    :cond_5b
    const/4 v1, 0x1

    :cond_5c
    return v1
.end method


# virtual methods
.method public getDefaultVisibilityForAttachImageButton(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z
    .registers 2

    .line 200
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/helpshift/widget/WidgetGateway;->getDefaultVisibilityForAttachImageButtonNewConversation()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public getDefaultVisibilityForAttachImageButtonNewConversation()Z
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/helpshift/widget/WidgetGateway;->config:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v1, "fullPrivacy"

    invoke-virtual {v0, v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/helpshift/widget/WidgetGateway;->config:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v1, "allowUserAttachments"

    invoke-virtual {v0, v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public getDefaultVisibilityForConversationInfoButtonWidget(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z
    .registers 3

    .line 87
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/helpshift/widget/WidgetGateway;->config:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v0, "showConversationInfoScreen"

    invoke-virtual {p1, v0}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public makeAttachImageButtonViewState(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Lcom/helpshift/widget/MutableBaseViewState;
    .registers 3

    .line 166
    new-instance v0, Lcom/helpshift/widget/MutableBaseViewState;

    invoke-direct {v0}, Lcom/helpshift/widget/MutableBaseViewState;-><init>()V

    .line 167
    invoke-virtual {p0, p1}, Lcom/helpshift/widget/WidgetGateway;->getDefaultVisibilityForAttachImageButton(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    return-object v0
.end method

.method public makeConfirmationBoxViewState(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Lcom/helpshift/widget/MutableBaseViewState;
    .registers 3

    .line 143
    new-instance v0, Lcom/helpshift/widget/MutableBaseViewState;

    invoke-direct {v0}, Lcom/helpshift/widget/MutableBaseViewState;-><init>()V

    .line 144
    invoke-virtual {p0, v0, p1}, Lcom/helpshift/widget/WidgetGateway;->updateConfirmationBoxViewState(Lcom/helpshift/widget/MutableBaseViewState;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    return-object v0
.end method

.method public makeConversationFooterViewState(Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)Lcom/helpshift/widget/MutableConversationFooterViewState;
    .registers 4

    .line 92
    new-instance v0, Lcom/helpshift/widget/MutableConversationFooterViewState;

    invoke-direct {v0}, Lcom/helpshift/widget/MutableConversationFooterViewState;-><init>()V

    .line 93
    invoke-virtual {p0, v0, p1, p2}, Lcom/helpshift/widget/WidgetGateway;->updateConversationFooterViewState(Lcom/helpshift/widget/MutableConversationFooterViewState;Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)V

    return-object v0
.end method

.method public makeDescriptionViewState()Lcom/helpshift/widget/MutableTextViewState;
    .registers 11

    .line 209
    new-instance v0, Lcom/helpshift/widget/MutableTextViewState;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/helpshift/widget/MutableTextViewState;-><init>(Z)V

    .line 214
    iget-object v2, p0, Lcom/helpshift/widget/WidgetGateway;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v2}, Lcom/helpshift/conversation/domainmodel/ConversationController;->getConversationArchivalPrefillText()Ljava/lang/String;

    move-result-object v2

    .line 215
    iget-object v3, p0, Lcom/helpshift/widget/WidgetGateway;->config:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v4, "conversationPrefillText"

    invoke-virtual {v3, v4}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    iget-object v4, p0, Lcom/helpshift/widget/WidgetGateway;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v4}, Lcom/helpshift/conversation/domainmodel/ConversationController;->getConversationDetail()Lcom/helpshift/conversation/dto/ConversationDetailDTO;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_43

    .line 218
    iget v6, v4, Lcom/helpshift/conversation/dto/ConversationDetailDTO;->type:I

    if-ne v6, v1, :cond_43

    .line 220
    iget-object v1, v4, Lcom/helpshift/conversation/dto/ConversationDetailDTO;->title:Ljava/lang/String;

    .line 221
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-wide v8, v4, Lcom/helpshift/conversation/dto/ConversationDetailDTO;->timestamp:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-ltz v4, :cond_3d

    .line 223
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 224
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    const-wide/16 v8, 0x1c20

    cmp-long v4, v6, v8

    if-lez v4, :cond_44

    .line 225
    :cond_3d
    iget-object v1, p0, Lcom/helpshift/widget/WidgetGateway;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    const/4 v4, 0x0

    invoke-virtual {v1, v5, v4}, Lcom/helpshift/conversation/domainmodel/ConversationController;->saveDescriptionDetail(Ljava/lang/String;I)V

    :cond_43
    move-object v1, v5

    .line 230
    :cond_44
    invoke-static {v1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b

    goto :goto_68

    .line 233
    :cond_4b
    invoke-static {v2}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 235
    iget-object v1, p0, Lcom/helpshift/widget/WidgetGateway;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/conversation/domainmodel/ConversationController;->saveDescriptionDetail(Ljava/lang/String;I)V

    move-object v1, v2

    goto :goto_68

    .line 237
    :cond_59
    invoke-static {v3}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 239
    iget-object v1, p0, Lcom/helpshift/widget/WidgetGateway;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    const/4 v2, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/helpshift/conversation/domainmodel/ConversationController;->saveDescriptionDetail(Ljava/lang/String;I)V

    move-object v1, v3

    goto :goto_68

    :cond_67
    move-object v1, v5

    .line 242
    :goto_68
    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableTextViewState;->setText(Ljava/lang/String;)V

    return-object v0
.end method

.method public makeEmailViewState()Lcom/helpshift/widget/MutableTextViewState;
    .registers 3

    .line 264
    new-instance v0, Lcom/helpshift/widget/MutableTextViewState;

    invoke-direct {p0}, Lcom/helpshift/widget/WidgetGateway;->isEmailRequired()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/helpshift/widget/MutableTextViewState;-><init>(Z)V

    .line 265
    iget-object v1, p0, Lcom/helpshift/widget/WidgetGateway;->config:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-virtual {v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->shouldCreateConversationAnonymously()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 266
    iget-object v1, p0, Lcom/helpshift/widget/WidgetGateway;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableTextViewState;->setText(Ljava/lang/String;)V

    :cond_1a
    return-object v0
.end method

.method public makeImageAttachmentWidget()Lcom/helpshift/widget/MutableImageAttachmentViewState;
    .registers 4

    .line 289
    new-instance v0, Lcom/helpshift/widget/MutableImageAttachmentViewState;

    invoke-direct {v0}, Lcom/helpshift/widget/MutableImageAttachmentViewState;-><init>()V

    .line 290
    iget-object v1, p0, Lcom/helpshift/widget/WidgetGateway;->config:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v2, "fullPrivacy"

    invoke-virtual {v1, v2}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    .line 291
    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableImageAttachmentViewState;->setAttachmentPickerFile(Lcom/helpshift/conversation/dto/AttachmentPickerFile;)V

    .line 292
    invoke-virtual {p0, v0}, Lcom/helpshift/widget/WidgetGateway;->save(Lcom/helpshift/widget/MutableImageAttachmentViewState;)V

    goto :goto_2b

    .line 295
    :cond_17
    iget-object v1, p0, Lcom/helpshift/widget/WidgetGateway;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->getImageAttachmentDraft()Lcom/helpshift/conversation/dto/AttachmentPickerFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableImageAttachmentViewState;->setAttachmentPickerFile(Lcom/helpshift/conversation/dto/AttachmentPickerFile;)V

    .line 296
    iget-object v1, p0, Lcom/helpshift/widget/WidgetGateway;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->isCreateConversationInProgress()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableImageAttachmentViewState;->setClickable(Z)V

    :goto_2b
    return-object v0
.end method

.method public makeNameViewState()Lcom/helpshift/widget/MutableTextViewState;
    .registers 3

    .line 251
    new-instance v0, Lcom/helpshift/widget/MutableTextViewState;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/helpshift/widget/MutableTextViewState;-><init>(Z)V

    .line 253
    iget-object v1, p0, Lcom/helpshift/widget/WidgetGateway;->config:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-virtual {v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->shouldCreateConversationAnonymously()Z

    move-result v1

    if-nez v1, :cond_15

    .line 254
    iget-object v1, p0, Lcom/helpshift/widget/WidgetGateway;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_15
    const-string v1, "Anonymous"

    .line 259
    :goto_17
    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableTextViewState;->setText(Ljava/lang/String;)V

    return-object v0
.end method

.method public makeNewConversationAttachImageButtonViewState(Lcom/helpshift/widget/MutableImageAttachmentViewState;)Lcom/helpshift/widget/MutableBaseViewState;
    .registers 3

    .line 173
    new-instance v0, Lcom/helpshift/widget/MutableBaseViewState;

    invoke-direct {v0}, Lcom/helpshift/widget/MutableBaseViewState;-><init>()V

    .line 174
    invoke-direct {p0, p1}, Lcom/helpshift/widget/WidgetGateway;->getVisibilityForNewConversationAttachImageButton(Lcom/helpshift/widget/MutableImageAttachmentViewState;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    return-object v0
.end method

.method public makeProfileFormViewState(Lcom/helpshift/widget/TextViewState;Lcom/helpshift/widget/TextViewState;)Lcom/helpshift/widget/MutableBaseViewState;
    .registers 4

    .line 306
    new-instance v0, Lcom/helpshift/widget/MutableBaseViewState;

    invoke-direct {v0}, Lcom/helpshift/widget/MutableBaseViewState;-><init>()V

    .line 307
    invoke-direct {p0, p1, p2}, Lcom/helpshift/widget/WidgetGateway;->isProfileFormVisible(Lcom/helpshift/widget/TextViewState;Lcom/helpshift/widget/TextViewState;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    return-object v0
.end method

.method public makeProgressBarViewState()Lcom/helpshift/widget/MutableBaseViewState;
    .registers 3

    .line 333
    new-instance v0, Lcom/helpshift/widget/MutableBaseViewState;

    invoke-direct {v0}, Lcom/helpshift/widget/MutableBaseViewState;-><init>()V

    .line 334
    iget-object v1, p0, Lcom/helpshift/widget/WidgetGateway;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->isCreateConversationInProgress()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    return-object v0
.end method

.method public makeReplyBoxViewState(Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)Lcom/helpshift/widget/MutableReplyBoxViewState;
    .registers 4

    .line 59
    new-instance v0, Lcom/helpshift/widget/MutableReplyBoxViewState;

    invoke-direct {v0}, Lcom/helpshift/widget/MutableReplyBoxViewState;-><init>()V

    .line 60
    invoke-virtual {p0, v0, p1, p2}, Lcom/helpshift/widget/WidgetGateway;->updateReplyBoxWidget(Lcom/helpshift/widget/MutableReplyBoxViewState;Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)V

    return-object v0
.end method

.method public makeReplyFieldViewState()Lcom/helpshift/widget/MutableReplyFieldViewState;
    .registers 2

    .line 54
    new-instance v0, Lcom/helpshift/widget/MutableReplyFieldViewState;

    invoke-direct {v0}, Lcom/helpshift/widget/MutableReplyFieldViewState;-><init>()V

    return-object v0
.end method

.method public makeScrollJumperViewState()Lcom/helpshift/widget/MutableScrollJumperViewState;
    .registers 3

    .line 83
    new-instance v0, Lcom/helpshift/widget/MutableScrollJumperViewState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/helpshift/widget/MutableScrollJumperViewState;-><init>(ZZ)V

    return-object v0
.end method

.method public makeStartConversationButtonViewState()Lcom/helpshift/widget/MutableBaseViewState;
    .registers 3

    .line 48
    new-instance v0, Lcom/helpshift/widget/MutableBaseViewState;

    invoke-direct {v0}, Lcom/helpshift/widget/MutableBaseViewState;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/helpshift/widget/WidgetGateway;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->isCreateConversationInProgress()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    return-object v0
.end method

.method public save(Lcom/helpshift/widget/MutableImageAttachmentViewState;)V
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/helpshift/widget/WidgetGateway;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {p1}, Lcom/helpshift/widget/MutableImageAttachmentViewState;->getAttachmentPickerFile()Lcom/helpshift/conversation/dto/AttachmentPickerFile;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->saveImageAttachmentDraft(Lcom/helpshift/conversation/dto/AttachmentPickerFile;)V

    return-void
.end method

.method public save(Lcom/helpshift/widget/MutableTextViewState;)V
    .registers 4

    .line 247
    iget-object v0, p0, Lcom/helpshift/widget/WidgetGateway;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {p1}, Lcom/helpshift/widget/MutableTextViewState;->getText()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->saveDescriptionDetail(Ljava/lang/String;I)V

    return-void
.end method

.method public updateConfirmationBoxViewState(Lcom/helpshift/widget/MutableBaseViewState;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 4

    .line 157
    iget-boolean v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isRedacted:Z

    if-nez v0, :cond_14

    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REQUESTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne p2, v0, :cond_14

    iget-object p2, p0, Lcom/helpshift/widget/WidgetGateway;->config:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    .line 159
    invoke-virtual {p2}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->shouldShowConversationResolutionQuestion()Z

    move-result p2

    if-eqz p2, :cond_14

    const/4 p2, 0x1

    goto :goto_15

    :cond_14
    const/4 p2, 0x0

    .line 162
    :goto_15
    invoke-virtual {p1, p2}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    return-void
.end method

.method public updateConversationFooterViewState(Lcom/helpshift/widget/MutableConversationFooterViewState;Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)V
    .registers 7

    .line 100
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->NONE:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    .line 102
    iget-boolean v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isRedacted:Z

    if-eqz v1, :cond_a

    .line 103
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->REDACTED_STATE:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    goto/16 :goto_6d

    .line 105
    :cond_a
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v2, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_ACCEPTED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v1, v2, :cond_5e

    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v2, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_EXPIRED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v1, v2, :cond_17

    goto :goto_5e

    .line 114
    :cond_17
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v2, Lcom/helpshift/conversation/dto/IssueState;->REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v1, v2, :cond_20

    .line 115
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->REJECTED_MESSAGE:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    goto :goto_6d

    .line 117
    :cond_20
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v2, Lcom/helpshift/conversation/dto/IssueState;->ARCHIVED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v1, v2, :cond_29

    .line 118
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->ARCHIVAL_MESSAGE:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    goto :goto_6d

    .line 120
    :cond_29
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v2, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REQUESTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v1, v2, :cond_3a

    iget-object v1, p0, Lcom/helpshift/widget/WidgetGateway;->config:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    .line 121
    invoke-virtual {v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->shouldShowConversationResolutionQuestion()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 122
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->CONVERSATION_ENDED_MESSAGE:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    goto :goto_6d

    .line 124
    :cond_3a
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v2, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v1, v2, :cond_55

    if-eqz p3, :cond_45

    .line 126
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->NONE:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    goto :goto_6d

    .line 129
    :cond_45
    iget-object p3, p0, Lcom/helpshift/widget/WidgetGateway;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    iget-object p3, p3, Lcom/helpshift/conversation/domainmodel/ConversationController;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {p3, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->shouldShowCSATInFooter(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result p2

    if-eqz p2, :cond_52

    .line 130
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->CSAT_RATING:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    goto :goto_6d

    .line 133
    :cond_52
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->START_NEW_CONVERSATION:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    goto :goto_6d

    .line 136
    :cond_55
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object p3, Lcom/helpshift/conversation/dto/IssueState;->AUTHOR_MISMATCH:Lcom/helpshift/conversation/dto/IssueState;

    if-ne p2, p3, :cond_6d

    .line 137
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->AUTHOR_MISMATCH:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    goto :goto_6d

    .line 107
    :cond_5e
    :goto_5e
    iget-object p3, p0, Lcom/helpshift/widget/WidgetGateway;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    iget-object p3, p3, Lcom/helpshift/conversation/domainmodel/ConversationController;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {p3, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->shouldShowCSATInFooter(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result p2

    if-eqz p2, :cond_6b

    .line 108
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->CSAT_RATING:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    goto :goto_6d

    .line 111
    :cond_6b
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->START_NEW_CONVERSATION:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    .line 139
    :cond_6d
    :goto_6d
    invoke-virtual {p1, v0}, Lcom/helpshift/widget/MutableConversationFooterViewState;->setState(Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;)V

    return-void
.end method

.method public updateReplyBoxWidget(Lcom/helpshift/widget/MutableReplyBoxViewState;Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)V
    .registers 7

    .line 69
    iget-boolean v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isRedacted:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    :cond_6
    const/4 v1, 0x0

    goto :goto_17

    .line 72
    :cond_8
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isIssueInProgress()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_17

    .line 75
    :cond_f
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne p2, v0, :cond_6

    if-eqz p3, :cond_6

    .line 79
    :goto_17
    invoke-virtual {p1, v1}, Lcom/helpshift/widget/MutableReplyBoxViewState;->setVisible(Z)V

    return-void
.end method
