.class public Lcom/helpshift/conversation/viewmodel/NewConversationVM;
.super Ljava/lang/Object;
.source "NewConversationVM.java"

# interfaces
.implements Lcom/helpshift/conversation/domainmodel/ConversationController$StartNewConversationListener;
.implements Lcom/helpshift/account/AuthenticationFailureDM$AuthenticationFailureObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpshift_NewConvVM"


# instance fields
.field final attachImageButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

.field final conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

.field final descriptionViewState:Lcom/helpshift/widget/MutableTextViewState;

.field final domain:Lcom/helpshift/common/domain/Domain;

.field final emailViewState:Lcom/helpshift/widget/MutableTextViewState;

.field final imageAttachmentViewState:Lcom/helpshift/widget/MutableImageAttachmentViewState;

.field final nameViewState:Lcom/helpshift/widget/MutableTextViewState;

.field final platform:Lcom/helpshift/common/platform/Platform;

.field final profileFormViewState:Lcom/helpshift/widget/MutableBaseViewState;

.field final progressBarViewState:Lcom/helpshift/widget/MutableBaseViewState;

.field rendererWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/helpshift/conversation/viewmodel/NewConversationRenderer;",
            ">;"
        }
    .end annotation
.end field

.field final sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

.field final startConversationButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

.field wasSearchPerformed:Z

.field final widgetGateway:Lcom/helpshift/widget/WidgetGateway;


# direct methods
.method public constructor <init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/conversation/domainmodel/ConversationController;Lcom/helpshift/conversation/viewmodel/NewConversationRenderer;)V
    .registers 7

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->wasSearchPerformed:Z

    .line 60
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->platform:Lcom/helpshift/common/platform/Platform;

    .line 61
    iput-object p2, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->domain:Lcom/helpshift/common/domain/Domain;

    .line 62
    invoke-virtual {p2}, Lcom/helpshift/common/domain/Domain;->getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    .line 63
    iput-object p3, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    .line 66
    new-instance p1, Lcom/helpshift/widget/WidgetGateway;

    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-direct {p1, v0, p3}, Lcom/helpshift/widget/WidgetGateway;-><init>(Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;Lcom/helpshift/conversation/domainmodel/ConversationController;)V

    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->widgetGateway:Lcom/helpshift/widget/WidgetGateway;

    .line 67
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->widgetGateway:Lcom/helpshift/widget/WidgetGateway;

    invoke-virtual {p1}, Lcom/helpshift/widget/WidgetGateway;->makeDescriptionViewState()Lcom/helpshift/widget/MutableTextViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->descriptionViewState:Lcom/helpshift/widget/MutableTextViewState;

    .line 68
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->widgetGateway:Lcom/helpshift/widget/WidgetGateway;

    invoke-virtual {p1}, Lcom/helpshift/widget/WidgetGateway;->makeNameViewState()Lcom/helpshift/widget/MutableTextViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->nameViewState:Lcom/helpshift/widget/MutableTextViewState;

    .line 69
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->widgetGateway:Lcom/helpshift/widget/WidgetGateway;

    invoke-virtual {p1}, Lcom/helpshift/widget/WidgetGateway;->makeEmailViewState()Lcom/helpshift/widget/MutableTextViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->emailViewState:Lcom/helpshift/widget/MutableTextViewState;

    .line 70
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->widgetGateway:Lcom/helpshift/widget/WidgetGateway;

    invoke-virtual {p1}, Lcom/helpshift/widget/WidgetGateway;->makeImageAttachmentWidget()Lcom/helpshift/widget/MutableImageAttachmentViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->imageAttachmentViewState:Lcom/helpshift/widget/MutableImageAttachmentViewState;

    .line 71
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->widgetGateway:Lcom/helpshift/widget/WidgetGateway;

    invoke-virtual {p1}, Lcom/helpshift/widget/WidgetGateway;->makeProgressBarViewState()Lcom/helpshift/widget/MutableBaseViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->progressBarViewState:Lcom/helpshift/widget/MutableBaseViewState;

    .line 72
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->widgetGateway:Lcom/helpshift/widget/WidgetGateway;

    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->nameViewState:Lcom/helpshift/widget/MutableTextViewState;

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->emailViewState:Lcom/helpshift/widget/MutableTextViewState;

    invoke-virtual {p1, v0, v1}, Lcom/helpshift/widget/WidgetGateway;->makeProfileFormViewState(Lcom/helpshift/widget/TextViewState;Lcom/helpshift/widget/TextViewState;)Lcom/helpshift/widget/MutableBaseViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->profileFormViewState:Lcom/helpshift/widget/MutableBaseViewState;

    .line 73
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->widgetGateway:Lcom/helpshift/widget/WidgetGateway;

    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->imageAttachmentViewState:Lcom/helpshift/widget/MutableImageAttachmentViewState;

    invoke-virtual {p1, v0}, Lcom/helpshift/widget/WidgetGateway;->makeNewConversationAttachImageButtonViewState(Lcom/helpshift/widget/MutableImageAttachmentViewState;)Lcom/helpshift/widget/MutableBaseViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->attachImageButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    .line 74
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->widgetGateway:Lcom/helpshift/widget/WidgetGateway;

    invoke-virtual {p1}, Lcom/helpshift/widget/WidgetGateway;->makeStartConversationButtonViewState()Lcom/helpshift/widget/MutableBaseViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->startConversationButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    .line 76
    invoke-virtual {p3, p0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->registerStartNewConversationListener(Lcom/helpshift/conversation/domainmodel/ConversationController$StartNewConversationListener;)V

    .line 77
    invoke-virtual {p2}, Lcom/helpshift/common/domain/Domain;->getAuthenticationFailureDM()Lcom/helpshift/account/AuthenticationFailureDM;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/helpshift/account/AuthenticationFailureDM;->registerListener(Lcom/helpshift/account/AuthenticationFailureDM$AuthenticationFailureObserver;)V

    .line 79
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->rendererWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/conversation/viewmodel/NewConversationVM;)Z
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->isFormValid()Z

    move-result p0

    return p0
.end method

.method private handleException(Ljava/lang/Exception;)V
    .registers 4

    .line 233
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/NewConversationVM$7;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/viewmodel/NewConversationVM$7;-><init>(Lcom/helpshift/conversation/viewmodel/NewConversationVM;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method private isFormValid()Z
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->descriptionViewState:Lcom/helpshift/widget/MutableTextViewState;

    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->validateDescription()Lcom/helpshift/widget/TextViewState$TextViewStatesError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableTextViewState;->setError(Lcom/helpshift/widget/TextViewState$TextViewStatesError;)V

    .line 249
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->nameViewState:Lcom/helpshift/widget/MutableTextViewState;

    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->validateName()Lcom/helpshift/widget/TextViewState$TextViewStatesError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableTextViewState;->setError(Lcom/helpshift/widget/TextViewState$TextViewStatesError;)V

    .line 250
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->emailViewState:Lcom/helpshift/widget/MutableTextViewState;

    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->validateEmail()Lcom/helpshift/widget/TextViewState$TextViewStatesError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableTextViewState;->setError(Lcom/helpshift/widget/TextViewState$TextViewStatesError;)V

    .line 252
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->descriptionViewState:Lcom/helpshift/widget/MutableTextViewState;

    invoke-virtual {v0}, Lcom/helpshift/widget/MutableTextViewState;->getError()Lcom/helpshift/widget/TextViewState$TextViewStatesError;

    move-result-object v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->nameViewState:Lcom/helpshift/widget/MutableTextViewState;

    .line 253
    invoke-virtual {v0}, Lcom/helpshift/widget/MutableTextViewState;->getError()Lcom/helpshift/widget/TextViewState$TextViewStatesError;

    move-result-object v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->emailViewState:Lcom/helpshift/widget/MutableTextViewState;

    .line 254
    invoke-virtual {v0}, Lcom/helpshift/widget/MutableTextViewState;->getError()Lcom/helpshift/widget/TextViewState$TextViewStatesError;

    move-result-object v0

    if-nez v0, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    return v0
.end method

.method private showSearchOrStartNewConversationInternal(Z)V
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/NewConversationVM$5;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/viewmodel/NewConversationVM$5;-><init>(Lcom/helpshift/conversation/viewmodel/NewConversationVM;Z)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runSerial(Lcom/helpshift/common/domain/F;)V

    return-void
.end method


# virtual methods
.method public getAttachImageButtonViewState()Lcom/helpshift/widget/BaseViewState;
    .registers 2

    .line 419
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->attachImageButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    return-object v0
.end method

.method public getDescriptionViewState()Lcom/helpshift/widget/TextViewState;
    .registers 2

    .line 407
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->descriptionViewState:Lcom/helpshift/widget/MutableTextViewState;

    return-object v0
.end method

.method public getEmailViewState()Lcom/helpshift/widget/TextViewState;
    .registers 2

    .line 431
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->emailViewState:Lcom/helpshift/widget/MutableTextViewState;

    return-object v0
.end method

.method public getImageAttachmentViewState()Lcom/helpshift/widget/ImageAttachmentViewState;
    .registers 2

    .line 423
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->imageAttachmentViewState:Lcom/helpshift/widget/MutableImageAttachmentViewState;

    return-object v0
.end method

.method public getNameViewState()Lcom/helpshift/widget/TextViewState;
    .registers 2

    .line 427
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->nameViewState:Lcom/helpshift/widget/MutableTextViewState;

    return-object v0
.end method

.method public getProfileFormViewState()Lcom/helpshift/widget/BaseViewState;
    .registers 2

    .line 435
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->profileFormViewState:Lcom/helpshift/widget/MutableBaseViewState;

    return-object v0
.end method

.method public getProgressBarViewState()Lcom/helpshift/widget/BaseViewState;
    .registers 2

    .line 411
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->progressBarViewState:Lcom/helpshift/widget/MutableBaseViewState;

    return-object v0
.end method

.method public getStartConversationButtonState()Lcom/helpshift/widget/BaseViewState;
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->startConversationButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    return-object v0
.end method

.method public handleImageAttachmentClearButtonClick()V
    .registers 3

    .line 319
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->progressBarViewState:Lcom/helpshift/widget/MutableBaseViewState;

    invoke-virtual {v0}, Lcom/helpshift/widget/MutableBaseViewState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 323
    :cond_9
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/NewConversationVM$9;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/NewConversationVM$9;-><init>(Lcom/helpshift/conversation/viewmodel/NewConversationVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runSerial(Lcom/helpshift/common/domain/F;)V

    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0, v0}, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->setImageAttachment(Lcom/helpshift/conversation/dto/AttachmentPickerFile;)V

    return-void
.end method

.method public handleImageAttachmentClick()V
    .registers 3

    .line 353
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->progressBarViewState:Lcom/helpshift/widget/MutableBaseViewState;

    invoke-virtual {v0}, Lcom/helpshift/widget/MutableBaseViewState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 357
    :cond_9
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/NewConversationVM$11;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/NewConversationVM$11;-><init>(Lcom/helpshift/conversation/viewmodel/NewConversationVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runSerial(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public onAuthenticationFailure()V
    .registers 3

    .line 396
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/NewConversationVM$14;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/NewConversationVM$14;-><init>(Lcom/helpshift/conversation/viewmodel/NewConversationVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public onCreateConversationFailure(Ljava/lang/Exception;)V
    .registers 4

    .line 217
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->progressBarViewState:Lcom/helpshift/widget/MutableBaseViewState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    .line 218
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->startConversationButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    .line 219
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->imageAttachmentViewState:Lcom/helpshift/widget/MutableImageAttachmentViewState;

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableImageAttachmentViewState;->setClickable(Z)V

    .line 220
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->attachImageButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->imageAttachmentViewState:Lcom/helpshift/widget/MutableImageAttachmentViewState;

    invoke-virtual {v1}, Lcom/helpshift/widget/MutableImageAttachmentViewState;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    .line 221
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->handleException(Ljava/lang/Exception;)V

    return-void
.end method

.method public onCreateConversationSuccess(J)V
    .registers 5

    .line 192
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->progressBarViewState:Lcom/helpshift/widget/MutableBaseViewState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    .line 193
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->startConversationButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    .line 194
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->descriptionViewState:Lcom/helpshift/widget/MutableTextViewState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableTextViewState;->setText(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->imageAttachmentViewState:Lcom/helpshift/widget/MutableImageAttachmentViewState;

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableImageAttachmentViewState;->setAttachmentPickerFile(Lcom/helpshift/conversation/dto/AttachmentPickerFile;)V

    .line 196
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->attachImageButtonViewState:Lcom/helpshift/widget/MutableBaseViewState;

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->imageAttachmentViewState:Lcom/helpshift/widget/MutableImageAttachmentViewState;

    invoke-virtual {v1}, Lcom/helpshift/widget/MutableImageAttachmentViewState;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    .line 197
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/NewConversationVM$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/helpshift/conversation/viewmodel/NewConversationVM$6;-><init>(Lcom/helpshift/conversation/viewmodel/NewConversationVM;J)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public setConversationViewState(I)V
    .registers 4

    .line 386
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/NewConversationVM$13;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/viewmodel/NewConversationVM$13;-><init>(Lcom/helpshift/conversation/viewmodel/NewConversationVM;I)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runSerial(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 4

    .line 83
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/NewConversationVM$1;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/viewmodel/NewConversationVM$1;-><init>(Lcom/helpshift/conversation/viewmodel/NewConversationVM;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runSerial(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/NewConversationVM$3;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/viewmodel/NewConversationVM$3;-><init>(Lcom/helpshift/conversation/viewmodel/NewConversationVM;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runSerial(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public setImageAttachment(Lcom/helpshift/conversation/dto/AttachmentPickerFile;)V
    .registers 4

    .line 336
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/NewConversationVM$10;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/viewmodel/NewConversationVM$10;-><init>(Lcom/helpshift/conversation/viewmodel/NewConversationVM;Lcom/helpshift/conversation/dto/AttachmentPickerFile;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runSerial(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/NewConversationVM$2;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/viewmodel/NewConversationVM$2;-><init>(Lcom/helpshift/conversation/viewmodel/NewConversationVM;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runSerial(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .registers 4

    .line 304
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/NewConversationVM$8;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/viewmodel/NewConversationVM$8;-><init>(Lcom/helpshift/conversation/viewmodel/NewConversationVM;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runSerial(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public setShouldDropCustomMetadata(Z)V
    .registers 4

    .line 377
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/NewConversationVM$12;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/viewmodel/NewConversationVM$12;-><init>(Lcom/helpshift/conversation/viewmodel/NewConversationVM;Z)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runSerial(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public setWasSearchPerformed(Z)V
    .registers 4

    .line 120
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/NewConversationVM$4;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/viewmodel/NewConversationVM$4;-><init>(Lcom/helpshift/conversation/viewmodel/NewConversationVM;Z)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runSerial(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method shouldShowSearchOnNewConversation()Z
    .registers 3

    .line 186
    iget-boolean v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->wasSearchPerformed:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v1, "showSearchOnNewConversation"

    .line 187
    invoke-virtual {v0, v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public showSearchOrStartNewConversation()V
    .registers 2

    const/4 v0, 0x1

    .line 132
    invoke-direct {p0, v0}, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->showSearchOrStartNewConversationInternal(Z)V

    return-void
.end method

.method public startNewConversation()V
    .registers 2

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, v0}, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->showSearchOrStartNewConversationInternal(Z)V

    return-void
.end method

.method public unregisterRenderer(Lcom/helpshift/conversation/viewmodel/NewConversationRenderer;)V
    .registers 3

    .line 225
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->rendererWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 226
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->rendererWeakRef:Ljava/lang/ref/WeakReference;

    .line 228
    :cond_12
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {p1}, Lcom/helpshift/common/domain/Domain;->getAuthenticationFailureDM()Lcom/helpshift/account/AuthenticationFailureDM;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/helpshift/account/AuthenticationFailureDM;->unregisterListener(Lcom/helpshift/account/AuthenticationFailureDM$AuthenticationFailureObserver;)V

    .line 229
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {p1, p0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->unregisterStartNewConversationListener(Lcom/helpshift/conversation/domainmodel/ConversationController$StartNewConversationListener;)V

    return-void
.end method

.method public validateDescription()Lcom/helpshift/widget/TextViewState$TextViewStatesError;
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->descriptionViewState:Lcom/helpshift/widget/MutableTextViewState;

    invoke-virtual {v0}, Lcom/helpshift/widget/MutableTextViewState;->getText()Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 260
    sget-object v0, Lcom/helpshift/widget/TextViewState$TextViewStatesError;->EMPTY:Lcom/helpshift/widget/TextViewState$TextViewStatesError;

    return-object v0

    .line 262
    :cond_f
    sget-object v1, Lcom/helpshift/widget/TextViewState;->specialCharactersPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 263
    sget-object v0, Lcom/helpshift/widget/TextViewState$TextViewStatesError;->ONLY_SPECIAL_CHARACTERS:Lcom/helpshift/widget/TextViewState$TextViewStatesError;

    return-object v0

    .line 265
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-virtual {v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getMinimumConversationDescriptionLength()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 266
    sget-object v0, Lcom/helpshift/widget/TextViewState$TextViewStatesError;->LESS_THAN_MINIMUM_LENGTH:Lcom/helpshift/widget/TextViewState$TextViewStatesError;

    return-object v0

    :cond_2d
    const/4 v0, 0x0

    return-object v0
.end method

.method public validateEmail()Lcom/helpshift/widget/TextViewState$TextViewStatesError;
    .registers 4

    .line 287
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->emailViewState:Lcom/helpshift/widget/MutableTextViewState;

    invoke-virtual {v0}, Lcom/helpshift/widget/MutableTextViewState;->getText()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_19

    .line 290
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->emailViewState:Lcom/helpshift/widget/MutableTextViewState;

    invoke-virtual {v0}, Lcom/helpshift/widget/MutableTextViewState;->isRequired()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 291
    sget-object v0, Lcom/helpshift/widget/TextViewState$TextViewStatesError;->EMPTY:Lcom/helpshift/widget/TextViewState$TextViewStatesError;

    return-object v0

    :cond_18
    return-object v2

    .line 297
    :cond_19
    invoke-static {v0}, Lcom/helpshift/util/HSPattern;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 298
    sget-object v0, Lcom/helpshift/widget/TextViewState$TextViewStatesError;->INVALID_EMAIL:Lcom/helpshift/widget/TextViewState$TextViewStatesError;

    return-object v0

    :cond_22
    return-object v2
.end method

.method public validateName()Lcom/helpshift/widget/TextViewState$TextViewStatesError;
    .registers 3

    .line 274
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->nameViewState:Lcom/helpshift/widget/MutableTextViewState;

    invoke-virtual {v0}, Lcom/helpshift/widget/MutableTextViewState;->getText()Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 276
    sget-object v0, Lcom/helpshift/widget/TextViewState$TextViewStatesError;->EMPTY:Lcom/helpshift/widget/TextViewState$TextViewStatesError;

    return-object v0

    .line 278
    :cond_f
    sget-object v1, Lcom/helpshift/widget/TextViewState;->specialCharactersPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 279
    sget-object v0, Lcom/helpshift/widget/TextViewState$TextViewStatesError;->ONLY_SPECIAL_CHARACTERS:Lcom/helpshift/widget/TextViewState$TextViewStatesError;

    return-object v0

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method
