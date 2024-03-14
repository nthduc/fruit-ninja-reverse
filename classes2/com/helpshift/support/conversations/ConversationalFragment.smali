.class public Lcom/helpshift/support/conversations/ConversationalFragment;
.super Lcom/helpshift/support/conversations/BaseConversationFragment;
.source "ConversationalFragment.java"

# interfaces
.implements Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;
.implements Lcom/helpshift/support/conversations/ConversationalFragmentRouter;
.implements Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener$RecyclerViewScrollCallback;
.implements Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;
.implements Lcom/helpshift/support/conversations/smartintent/SmartIntentRouter;


# static fields
.field public static final BUNDLE_ARG_CONVERSATION_LOCAL_ID:Ljava/lang/String; = "issueId"

.field public static final BUNDLE_ARG_SHOW_CONVERSATION_HISTORY:Ljava/lang/String; = "show_conv_history"

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "HSConversationFragment"

.field private static final TAG:Ljava/lang/String; = "Helpshift_ConvalFrag"


# instance fields
.field private final SHOULD_SHOW_UNREAD_MESSAGE_INDICATOR:Ljava/lang/String;

.field private final SMART_INTENT_INSTANCE_SAVED_STATE:Ljava/lang/String;

.field private attachmentPickerType:I

.field protected conversationId:Ljava/lang/Long;

.field conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

.field private hsRecyclerViewScrollListener:Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener;

.field private imageRefersId:Ljava/lang/String;

.field private inNoOpMode:Z

.field private isConversationVMInitialized:Z

.field private lastSoftInputMode:I

.field private lastWindowFlags:I

.field private messagesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private readableAttachmentMessage:Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;

.field protected renderer:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

.field protected retainMessageBoxOnUI:Z

.field private selectedAttachmentFile:Lcom/helpshift/conversation/dto/AttachmentPickerFile;

.field private selectedImageRefersId:Ljava/lang/String;

.field private shouldShowConversationHistory:Z

.field private shouldUpdateAttachment:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 89
    invoke-direct {p0}, Lcom/helpshift/support/conversations/BaseConversationFragment;-><init>()V

    const-string v0, "should_show_unread_message_indicator"

    .line 99
    iput-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->SHOULD_SHOW_UNREAD_MESSAGE_INDICATOR:Ljava/lang/String;

    const-string v0, "si_instance_saved_state"

    .line 100
    iput-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->SMART_INTENT_INSTANCE_SAVED_STATE:Ljava/lang/String;

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->isConversationVMInitialized:Z

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/conversations/ConversationalFragment;Ljava/lang/String;)V
    .registers 2

    .line 89
    invoke-virtual {p0, p1}, Lcom/helpshift/support/conversations/ConversationalFragment;->copyToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method private addViewStateObservers()V
    .registers 4

    .line 268
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getDomain()Lcom/helpshift/common/domain/Domain;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getReplyFieldViewState()Lcom/helpshift/widget/ReplyFieldViewState;

    move-result-object v1

    new-instance v2, Lcom/helpshift/support/conversations/ConversationalFragment$4;

    invoke-direct {v2, p0}, Lcom/helpshift/support/conversations/ConversationalFragment$4;-><init>(Lcom/helpshift/support/conversations/ConversationalFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/helpshift/widget/ReplyFieldViewState;->subscribe(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/widget/HSObserver;)V

    .line 282
    iget-object v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getHistoryLoadingViewState()Lcom/helpshift/widget/HistoryLoadingViewState;

    move-result-object v1

    new-instance v2, Lcom/helpshift/support/conversations/ConversationalFragment$5;

    invoke-direct {v2, p0}, Lcom/helpshift/support/conversations/ConversationalFragment$5;-><init>(Lcom/helpshift/support/conversations/ConversationalFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/helpshift/widget/HistoryLoadingViewState;->subscribe(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/widget/HSObserver;)V

    .line 291
    iget-object v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getScrollJumperViewState()Lcom/helpshift/widget/ScrollJumperViewState;

    move-result-object v1

    new-instance v2, Lcom/helpshift/support/conversations/ConversationalFragment$6;

    invoke-direct {v2, p0}, Lcom/helpshift/support/conversations/ConversationalFragment$6;-><init>(Lcom/helpshift/support/conversations/ConversationalFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/helpshift/widget/ScrollJumperViewState;->subscribe(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/widget/HSObserver;)V

    .line 300
    iget-object v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getConversationFooterViewState()Lcom/helpshift/widget/ConversationFooterViewState;

    move-result-object v1

    new-instance v2, Lcom/helpshift/support/conversations/ConversationalFragment$7;

    invoke-direct {v2, p0}, Lcom/helpshift/support/conversations/ConversationalFragment$7;-><init>(Lcom/helpshift/support/conversations/ConversationalFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/helpshift/widget/ConversationFooterViewState;->subscribe(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/widget/HSObserver;)V

    .line 310
    iget-object v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getReplyBoxViewState()Lcom/helpshift/widget/ReplyBoxViewState;

    move-result-object v1

    new-instance v2, Lcom/helpshift/support/conversations/ConversationalFragment$8;

    invoke-direct {v2, p0}, Lcom/helpshift/support/conversations/ConversationalFragment$8;-><init>(Lcom/helpshift/support/conversations/ConversationalFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/helpshift/widget/ReplyBoxViewState;->subscribe(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/widget/HSObserver;)V

    .line 319
    iget-object v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getReplyButtonViewState()Lcom/helpshift/widget/BaseViewState;

    move-result-object v1

    new-instance v2, Lcom/helpshift/support/conversations/ConversationalFragment$9;

    invoke-direct {v2, p0}, Lcom/helpshift/support/conversations/ConversationalFragment$9;-><init>(Lcom/helpshift/support/conversations/ConversationalFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/helpshift/widget/BaseViewState;->subscribe(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/widget/HSObserver;)V

    .line 328
    iget-object v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getAttachImageButtonViewState()Lcom/helpshift/widget/BaseViewState;

    move-result-object v1

    new-instance v2, Lcom/helpshift/support/conversations/ConversationalFragment$10;

    invoke-direct {v2, p0}, Lcom/helpshift/support/conversations/ConversationalFragment$10;-><init>(Lcom/helpshift/support/conversations/ConversationalFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/helpshift/widget/BaseViewState;->subscribe(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/widget/HSObserver;)V

    .line 337
    iget-object v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getConfirmationBoxViewState()Lcom/helpshift/widget/BaseViewState;

    move-result-object v1

    new-instance v2, Lcom/helpshift/support/conversations/ConversationalFragment$11;

    invoke-direct {v2, p0}, Lcom/helpshift/support/conversations/ConversationalFragment$11;-><init>(Lcom/helpshift/support/conversations/ConversationalFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/helpshift/widget/BaseViewState;->subscribe(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/widget/HSObserver;)V

    .line 346
    iget-object v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getSmartIntentReplyButtonViewState()Lcom/helpshift/widget/BaseViewState;

    move-result-object v1

    new-instance v2, Lcom/helpshift/support/conversations/ConversationalFragment$12;

    invoke-direct {v2, p0}, Lcom/helpshift/support/conversations/ConversationalFragment$12;-><init>(Lcom/helpshift/support/conversations/ConversationalFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/helpshift/widget/BaseViewState;->subscribe(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/widget/HSObserver;)V

    .line 355
    iget-object v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getSmartIntentClearSearchButtonViewState()Lcom/helpshift/widget/BaseViewState;

    move-result-object v1

    new-instance v2, Lcom/helpshift/support/conversations/ConversationalFragment$13;

    invoke-direct {v2, p0}, Lcom/helpshift/support/conversations/ConversationalFragment$13;-><init>(Lcom/helpshift/support/conversations/ConversationalFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/helpshift/widget/BaseViewState;->subscribe(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/widget/HSObserver;)V

    .line 363
    iget-object v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getSmartIntentReplyFieldViewState()Lcom/helpshift/widget/ReplyFieldViewState;

    move-result-object v1

    new-instance v2, Lcom/helpshift/support/conversations/ConversationalFragment$14;

    invoke-direct {v2, p0}, Lcom/helpshift/support/conversations/ConversationalFragment$14;-><init>(Lcom/helpshift/support/conversations/ConversationalFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/helpshift/widget/ReplyFieldViewState;->subscribe(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/widget/HSObserver;)V

    return-void
.end method

.method private buildSmartIntentRenderer()Lcom/helpshift/conversation/activeconversation/SmartIntentRenderer;
    .registers 4

    .line 415
    new-instance v0, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;

    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 416
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v2

    .line 417
    invoke-virtual {v2}, Lcom/helpshift/support/fragments/SupportFragment;->isParentViewBottomSheetDialogFragment()Z

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;-><init>(Landroid/content/Context;Lcom/helpshift/support/conversations/smartintent/SmartIntentRouter;Z)V

    return-object v0
.end method

.method private checkWriteStoragePermissionAndDelegateToVM(ZLcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;)V
    .registers 5

    const/4 v0, 0x0

    .line 732
    iput-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->readableAttachmentMessage:Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;

    if-eqz p1, :cond_39

    .line 734
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getPlatform()Lcom/helpshift/common/platform/Platform;

    move-result-object p1

    invoke-interface {p1}, Lcom/helpshift/common/platform/Platform;->getDevice()Lcom/helpshift/common/platform/Device;

    move-result-object p1

    .line 735
    sget-object v0, Lcom/helpshift/support/conversations/ConversationalFragment$17;->$SwitchMap$com$helpshift$common$platform$Device$PermissionState:[I

    sget-object v1, Lcom/helpshift/common/platform/Device$PermissionType;->WRITE_STORAGE:Lcom/helpshift/common/platform/Device$PermissionType;

    .line 736
    invoke-interface {p1, v1}, Lcom/helpshift/common/platform/Device;->checkPermission(Lcom/helpshift/common/platform/Device$PermissionType;)Lcom/helpshift/common/platform/Device$PermissionState;

    move-result-object p1

    .line 735
    invoke-virtual {p1}, Lcom/helpshift/common/platform/Device$PermissionState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_33

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2b

    const/4 v1, 0x3

    if-eq p1, v1, :cond_25

    goto :goto_3e

    .line 744
    :cond_25
    iput-object p2, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->readableAttachmentMessage:Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;

    .line 745
    invoke-virtual {p0, v0}, Lcom/helpshift/support/conversations/ConversationalFragment;->requestWriteExternalStoragePermission(Z)V

    goto :goto_3e

    .line 741
    :cond_2b
    iget-object p1, p2, Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;->attachmentUrl:Ljava/lang/String;

    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;->contentType:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/helpshift/support/conversations/ConversationalFragment;->startDownloadWithSystemService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 738
    :cond_33
    iget-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {p1, p2}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->handleAdminAttachmentMessageClick(Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;)V

    goto :goto_3e

    .line 750
    :cond_39
    iget-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {p1, p2}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->handleAdminAttachmentMessageClick(Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;)V

    :goto_3e
    return-void
.end method

.method private getParentWindow()Landroid/view/Window;
    .registers 4

    .line 426
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v1, 0x5

    :goto_5
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_23

    if-eqz v0, :cond_23

    .line 433
    instance-of v1, v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v1, :cond_1d

    .line 434
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/DialogFragment;

    .line 435
    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 437
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0

    .line 442
    :cond_1d
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    move v1, v2

    goto :goto_5

    .line 446
    :cond_23
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/conversations/ConversationalFragment;
    .registers 2

    .line 125
    new-instance v0, Lcom/helpshift/support/conversations/ConversationalFragment;

    invoke-direct {v0}, Lcom/helpshift/support/conversations/ConversationalFragment;-><init>()V

    .line 126
    invoke-virtual {v0, p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private removeViewStateObservers()V
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getReplyFieldViewState()Lcom/helpshift/widget/ReplyFieldViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/widget/ReplyFieldViewState;->unsubscribe()V

    .line 377
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getHistoryLoadingViewState()Lcom/helpshift/widget/HistoryLoadingViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/widget/HistoryLoadingViewState;->unsubscribe()V

    .line 378
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getScrollJumperViewState()Lcom/helpshift/widget/ScrollJumperViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/widget/ScrollJumperViewState;->unsubscribe()V

    .line 379
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getConversationFooterViewState()Lcom/helpshift/widget/ConversationFooterViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/widget/ConversationFooterViewState;->unsubscribe()V

    .line 380
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getAttachImageButtonViewState()Lcom/helpshift/widget/BaseViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/widget/BaseViewState;->unsubscribe()V

    .line 381
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getReplyBoxViewState()Lcom/helpshift/widget/ReplyBoxViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/widget/ReplyBoxViewState;->unsubscribe()V

    .line 382
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getReplyButtonViewState()Lcom/helpshift/widget/BaseViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/widget/BaseViewState;->unsubscribe()V

    .line 383
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getConfirmationBoxViewState()Lcom/helpshift/widget/BaseViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/widget/BaseViewState;->unsubscribe()V

    .line 384
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getSmartIntentReplyButtonViewState()Lcom/helpshift/widget/BaseViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/widget/BaseViewState;->unsubscribe()V

    .line 385
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getSmartIntentClearSearchButtonViewState()Lcom/helpshift/widget/BaseViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/widget/BaseViewState;->unsubscribe()V

    return-void
.end method

.method private startDownloadWithSystemService(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 775
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    if-nez v0, :cond_f

    return-void

    .line 781
    :cond_f
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 782
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 786
    invoke-virtual {v1, p2}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const/4 p1, 0x1

    .line 787
    invoke-virtual {v1, p1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 789
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 790
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_32

    .line 791
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getView()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/helpshift/R$string;->hs__starting_download:I

    const/4 v0, -0x1

    invoke-static {p1, p2, v0}, Lcom/helpshift/support/util/SnackbarUtil;->showSnackbar(Landroid/view/View;II)V

    :cond_32
    return-void
.end method


# virtual methods
.method public downloadAvatarImage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 3

    .line 727
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->downloadAvatarImage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    return-void
.end method

.method protected getAttachmentMode()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method protected getToolbarTitle()Ljava/lang/String;
    .registers 2

    .line 634
    sget v0, Lcom/helpshift/R$string;->hs__conversation_header:I

    invoke-virtual {p0, v0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewName()Lcom/helpshift/support/util/AppSessionConstants$Screen;
    .registers 2

    .line 594
    sget-object v0, Lcom/helpshift/support/util/AppSessionConstants$Screen;->CONVERSATION:Lcom/helpshift/support/util/AppSessionConstants$Screen;

    return-object v0
.end method

.method public handleAdminImageAttachmentMessageClick(Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;)V
    .registers 3

    const/4 v0, 0x1

    .line 701
    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/conversations/ConversationalFragment;->checkWriteStoragePermissionAndDelegateToVM(ZLcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;)V

    return-void
.end method

.method public handleAttachmentAction(Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;Lcom/helpshift/conversation/dto/AttachmentPickerFile;Ljava/lang/String;)Z
    .registers 5
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 615
    sget-object v0, Lcom/helpshift/support/conversations/ConversationalFragment$17;->$SwitchMap$com$helpshift$support$fragments$AttachmentPreviewFragment$AttachmentAction:[I

    invoke-virtual {p1}, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    const/4 p1, 0x0

    return p1

    .line 618
    :cond_d
    iget-boolean p1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->isConversationVMInitialized:Z

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    if-eqz p1, :cond_19

    .line 619
    invoke-virtual {p1, p2, p3}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->sendAttachment(Lcom/helpshift/conversation/dto/AttachmentPickerFile;Ljava/lang/String;)V

    goto :goto_1f

    .line 623
    :cond_19
    iput-object p2, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->selectedAttachmentFile:Lcom/helpshift/conversation/dto/AttachmentPickerFile;

    .line 624
    iput-object p3, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->selectedImageRefersId:Ljava/lang/String;

    .line 625
    iput-boolean v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->shouldUpdateAttachment:Z

    :goto_1f
    return v0
.end method

.method public handleGenericAttachmentMessageClick(Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;)V
    .registers 3

    .line 695
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;->isWriteStoragePermissionRequired()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/conversations/ConversationalFragment;->checkWriteStoragePermissionAndDelegateToVM(ZLcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;)V

    return-void
.end method

.method public handleOptionSelected(Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;Z)V
    .registers 5

    .line 487
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0, p1, p2, p3}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->handleOptionSelected(Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;Z)V

    return-void
.end method

.method public handleOptionSelectedForPicker(Lcom/helpshift/conversation/viewmodel/OptionUIModel;Z)V
    .registers 4

    .line 531
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->handleOptionSelectedForPicker(Lcom/helpshift/conversation/viewmodel/OptionUIModel;Z)V

    return-void
.end method

.method public handleReplyReviewButtonClick(Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;)V
    .registers 3

    .line 680
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->handleAppReviewRequestClick(Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;)V

    return-void
.end method

.method protected initConversationVM()V
    .registers 6

    .line 389
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v0

    iget-boolean v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->shouldShowConversationHistory:Z

    iget-object v2, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->renderer:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    iget-boolean v4, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->retainMessageBoxOnUI:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/helpshift/CoreApi;->getConversationalViewModel(ZLjava/lang/Long;Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;Z)Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    return-void
.end method

.method protected initRenderer(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 19

    .line 399
    new-instance v13, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 400
    invoke-direct {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getParentWindow()Landroid/view/Window;

    move-result-object v2

    .line 402
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getView()Landroid/view/View;

    move-result-object v4

    .line 404
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->isHelpshiftBrandingDisabled()Z

    move-result v6

    .line 406
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->isAvatarEnabledInChatFeed()Z

    move-result v7

    .line 409
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v10

    .line 410
    invoke-direct {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->buildSmartIntentRenderer()Lcom/helpshift/conversation/activeconversation/SmartIntentRenderer;

    move-result-object v11

    move-object v0, v13

    move-object v3, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object v12, p0

    invoke-direct/range {v0 .. v12}, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;ZZLandroid/view/View;Landroid/view/View;Lcom/helpshift/support/fragments/IToolbarMenuItemRenderer;Lcom/helpshift/conversation/activeconversation/SmartIntentRenderer;Lcom/helpshift/support/conversations/ConversationalFragmentRouter;)V

    move-object v0, p0

    iput-object v13, v0, Lcom/helpshift/support/conversations/ConversationalFragment;->renderer:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    return-void
.end method

.method protected initialize(Landroid/view/View;)V
    .registers 9

    .line 191
    sget v0, Lcom/helpshift/R$id;->hs__messagesList:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->messagesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 192
    sget v0, Lcom/helpshift/R$id;->hs__confirmation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 193
    sget v1, Lcom/helpshift/R$id;->scroll_indicator:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 194
    sget v2, Lcom/helpshift/R$id;->unread_indicator_red_dot:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 195
    sget v3, Lcom/helpshift/R$id;->unread_indicator_red_dot_image_view:I

    .line 196
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 201
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_38

    .line 202
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/helpshift/R$drawable;->hs__ring:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 203
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    :cond_38
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/helpshift/R$drawable;->hs__circle:I

    sget v6, Lcom/helpshift/R$attr;->colorAccent:I

    invoke-static {v4, v3, v5, v6}, Lcom/helpshift/util/Styles;->setDrawable(Landroid/content/Context;Landroid/view/View;II)V

    .line 210
    iget-object v3, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->messagesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/helpshift/support/conversations/ConversationalFragment;->initRenderer(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 212
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->initConversationVM()V

    .line 213
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->renderer:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    invoke-virtual {v0}, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->setReplyboxListeners()V

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->retainMessageBoxOnUI:Z

    .line 221
    iget-object v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->startLiveUpdates()V

    const/4 v1, 0x1

    .line 224
    iput-boolean v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->isConversationVMInitialized:Z

    .line 227
    iget-boolean v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->shouldUpdateAttachment:Z

    if-eqz v1, :cond_6a

    .line 228
    iget-object v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v2, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->selectedAttachmentFile:Lcom/helpshift/conversation/dto/AttachmentPickerFile;

    iget-object v3, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->selectedImageRefersId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->sendAttachment(Lcom/helpshift/conversation/dto/AttachmentPickerFile;Ljava/lang/String;)V

    .line 229
    iput-boolean v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->shouldUpdateAttachment:Z

    .line 232
    :cond_6a
    sget v0, Lcom/helpshift/R$id;->resolution_accepted_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/helpshift/support/conversations/ConversationalFragment$1;

    invoke-direct {v1, p0}, Lcom/helpshift/support/conversations/ConversationalFragment$1;-><init>(Lcom/helpshift/support/conversations/ConversationalFragment;)V

    .line 233
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    sget v0, Lcom/helpshift/R$id;->resolution_rejected_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/helpshift/support/conversations/ConversationalFragment$2;

    invoke-direct {v1, p0}, Lcom/helpshift/support/conversations/ConversationalFragment$2;-><init>(Lcom/helpshift/support/conversations/ConversationalFragment;)V

    .line 241
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    sget v0, Lcom/helpshift/R$id;->scroll_jump_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 251
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/helpshift/R$drawable;->hs__circle_shape_scroll_jump:I

    sget v2, Lcom/helpshift/R$attr;->hs__composeBackgroundColor:I

    invoke-static {v0, p1, v1, v2}, Lcom/helpshift/util/Styles;->setDrawable(Landroid/content/Context;Landroid/view/View;II)V

    .line 253
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Lcom/helpshift/R$attr;->hs__selectableOptionColor:I

    invoke-static {v0, v1, v2}, Lcom/helpshift/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 255
    new-instance v0, Lcom/helpshift/support/conversations/ConversationalFragment$3;

    invoke-direct {v0, p0}, Lcom/helpshift/support/conversations/ConversationalFragment$3;-><init>(Lcom/helpshift/support/conversations/ConversationalFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    new-instance p1, Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, v0, p0}, Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener;-><init>(Landroid/os/Handler;Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener$RecyclerViewScrollCallback;)V

    iput-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->hsRecyclerViewScrollListener:Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener;

    .line 263
    iget-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->messagesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->hsRecyclerViewScrollListener:Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public launchAttachmentPicker(I)V
    .registers 5

    .line 875
    iput p1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->attachmentPickerType:I

    .line 876
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 877
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getAttachmentMode()I

    move-result v1

    const-string v2, "key_attachment_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 878
    iget-object v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->imageRefersId:Ljava/lang/String;

    const-string v2, "key_refers_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_attachment_type"

    .line 879
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 880
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/helpshift/support/fragments/SupportFragment;->launchAttachmentPicker(Landroid/os/Bundle;)V

    return-void
.end method

.method public launchImagePicker(Lcom/helpshift/conversation/activeconversation/message/RequestScreenshotMessageDM;)V
    .registers 4

    .line 668
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/message/RequestScreenshotMessageDM;->serverId:Ljava/lang/String;

    iput-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->imageRefersId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 669
    iput p1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->attachmentPickerType:I

    .line 670
    iget-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onAttachmentButtonClick()V

    .line 671
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 672
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getAttachmentMode()I

    move-result v0

    const-string v1, "key_attachment_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 673
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->imageRefersId:Ljava/lang/String;

    const-string v1, "key_refers_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->attachmentPickerType:I

    const-string v1, "key_attachment_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 675
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpshift/support/fragments/SupportFragment;->launchAttachmentPicker(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActionCardClicked(Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;)V
    .registers 3

    .line 722
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onActionCardMessageClicked(Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;)V

    return-void
.end method

.method public onAddAttachmentButtonClick()V
    .registers 3

    const/4 v0, 0x0

    .line 868
    iput-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->imageRefersId:Ljava/lang/String;

    .line 869
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onAttachmentButtonClick()V

    .line 870
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->renderer:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    iget-object v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getWhiteListedAttachmentTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->showAttachmentPicker(Ljava/util/List;)V

    return-void
.end method

.method public onAdminMessageLinkClickFailed()V
    .registers 2

    .line 644
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onAdminMessageLinkClickFailed()V

    return-void
.end method

.method public onAdminMessageLinkClicked(Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 4

    .line 639
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onAdminMessageLinkClicked(Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    return-void
.end method

.method public onAdminSuggestedQuestionSelected(Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 494
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getSupportController()Lcom/helpshift/support/controllers/SupportController;

    move-result-object v0

    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;->source:Ljava/lang/String;

    new-instance v2, Lcom/helpshift/support/conversations/ConversationalFragment$15;

    invoke-direct {v2, p0, p1, p2}, Lcom/helpshift/support/conversations/ConversationalFragment$15;-><init>(Lcom/helpshift/support/conversations/ConversationalFragment;Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/helpshift/support/controllers/SupportController;->onAdminSuggestedQuestionSelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/support/fragments/SingleQuestionFragment$QuestionReadListener;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 4

    .line 133
    :try_start_0
    invoke-super {p0, p1}, Lcom/helpshift/support/conversations/BaseConversationFragment;->onAttach(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_14

    .line 141
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->isChangingConfigurations()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->renderer:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    if-eqz p1, :cond_13

    .line 142
    invoke-virtual {p1}, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->isReplyBoxVisible()Z

    move-result p1

    iput-boolean p1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->retainMessageBoxOnUI:Z

    :cond_13
    return-void

    :catch_14
    move-exception p1

    const-string v0, "Helpshift_ConvalFrag"

    const-string v1, "Caught exception in ConversationalFragment.onAttach()"

    .line 136
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->inNoOpMode:Z

    return-void
.end method

.method public onAuthenticationFailure()V
    .registers 2

    .line 890
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getSupportController()Lcom/helpshift/support/controllers/SupportController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/support/controllers/SupportController;->onAuthenticationFailure()V

    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .line 558
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->renderer:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    invoke-virtual {v0}, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->handleBackPressedForListPicker()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 563
    :cond_a
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->handleBackPressedForSmartIntent()Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public onCSATSurveyCancelled()V
    .registers 2

    .line 712
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onCSATSurveyCancelled()V

    return-void
.end method

.method public onCSATSurveyStarted()V
    .registers 2

    .line 521
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onCSATSurveyStarted()V

    return-void
.end method

.method public onCSATSurveySubmitted(ILjava/lang/String;)V
    .registers 4

    .line 707
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onCSATSurveySubmitted(ILjava/lang/String;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Ljava/lang/String;)V
    .registers 5

    .line 649
    invoke-static {p2}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 650
    sget v0, Lcom/helpshift/R$string;->hs__copy:I

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 651
    new-instance v0, Lcom/helpshift/support/conversations/ConversationalFragment$16;

    invoke-direct {v0, p0, p2}, Lcom/helpshift/support/conversations/ConversationalFragment$16;-><init>(Lcom/helpshift/support/conversations/ConversationalFragment;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_15
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 149
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput p3, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->lastWindowFlags:I

    .line 150
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p3

    const/16 v0, 0x800

    invoke-virtual {p3, v0}, Landroid/view/Window;->addFlags(I)V

    .line 151
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p3

    const/16 v0, 0x400

    invoke-virtual {p3, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 152
    sget p3, Lcom/helpshift/R$layout;->hs__conversation_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 910
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    if-eqz v0, :cond_7

    .line 911
    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onDestroy()V

    .line 913
    :cond_7
    invoke-super {p0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .line 817
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 818
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 819
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->lastWindowFlags:I

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_20
    const/4 v0, 0x0

    .line 821
    iput-boolean v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->isConversationVMInitialized:Z

    .line 822
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->setConversationViewState(I)V

    .line 823
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->renderer:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    invoke-virtual {v0}, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->unregisterFragmentRenderer()V

    .line 824
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->unregisterRenderer()V

    .line 825
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->renderer:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    invoke-virtual {v0}, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->destroy()V

    .line 828
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->messagesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->hsRecyclerViewScrollListener:Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 v0, 0x0

    .line 829
    iput-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->messagesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 831
    invoke-static {}, Lcom/helpshift/support/imageloader/ImageLoader;->getInstance()Lcom/helpshift/support/imageloader/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/support/imageloader/ImageLoader;->destroy()V

    .line 832
    invoke-super {p0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .registers 3

    .line 803
    iget-boolean v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->inNoOpMode:Z

    if-eqz v0, :cond_8

    .line 805
    invoke-super {p0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->onDetach()V

    return-void

    .line 809
    :cond_8
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 810
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getConversationInboxPoller()Lcom/helpshift/conversation/ConversationInboxPoller;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/ConversationInboxPoller;->startAppPoller(Z)V

    .line 812
    :cond_1a
    invoke-super {p0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->onDetach()V

    return-void
.end method

.method public onFocusChanged(Z)V
    .registers 3

    .line 577
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->renderer:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    if-eqz v0, :cond_7

    .line 578
    invoke-virtual {v0, p1}, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->onFocusChanged(Z)V

    :cond_7
    return-void
.end method

.method public onHistoryLoadingRetryClicked()V
    .registers 2

    .line 717
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->retryHistoryLoadingMessages()V

    return-void
.end method

.method public onLeafIntentSelected(Lcom/helpshift/conversation/smartintent/LeafIntentUIModel;)V
    .registers 3

    .line 935
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->handleLeafIntentSelected(Lcom/helpshift/conversation/smartintent/LeafIntentUIModel;)V

    return-void
.end method

.method public onListPickerSearchQueryChange(Ljava/lang/String;)V
    .registers 3

    .line 526
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onListPickerSearchQueryChange(Ljava/lang/String;)V

    return-void
.end method

.method public onNetworkAvailable()V
    .registers 2

    .line 584
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onNetworkAvailable()V

    return-void
.end method

.method public onNetworkUnavailable()V
    .registers 2

    .line 589
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onNetworkUnAvailable()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 475
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/network/connectivity/HSConnectivityManager;->getInstance(Landroid/content/Context;)Lcom/helpshift/network/connectivity/HSConnectivityManager;

    move-result-object v0

    .line 476
    invoke-virtual {v0, p0}, Lcom/helpshift/network/connectivity/HSConnectivityManager;->unregisterNetworkConnectivityListener(Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;)V

    .line 477
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->lastSoftInputMode:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 478
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->renderer:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    invoke-virtual {v0}, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->hideKeyboard()V

    .line 479
    invoke-direct {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->removeViewStateObservers()V

    .line 480
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onPause()V

    .line 481
    invoke-super {p0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->onPause()V

    return-void
.end method

.method protected onPermissionGranted(I)V
    .registers 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    goto :goto_37

    .line 765
    :cond_7
    iget-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->readableAttachmentMessage:Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;

    if-eqz p1, :cond_37

    .line 766
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->handleAdminAttachmentMessageClick(Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;)V

    const/4 p1, 0x0

    .line 767
    iput-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->readableAttachmentMessage:Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;

    goto :goto_37

    .line 758
    :cond_14
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 759
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getAttachmentMode()I

    move-result v0

    const-string v1, "key_attachment_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 760
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->imageRefersId:Ljava/lang/String;

    const-string v1, "key_refers_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->attachmentPickerType:I

    const-string v1, "key_attachment_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 762
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpshift/support/fragments/SupportFragment;->launchAttachmentPicker(Landroid/os/Bundle;)V

    :cond_37
    :goto_37
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 451
    invoke-super {p0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->onResume()V

    .line 452
    invoke-direct {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->addViewStateObservers()V

    .line 458
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_11

    .line 459
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->pushChatScreenOpenAnalyticsEvent()V

    .line 461
    :cond_11
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onResume()V

    .line 462
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->lastSoftInputMode:I

    .line 463
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 465
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/network/connectivity/HSConnectivityManager;->getInstance(Landroid/content/Context;)Lcom/helpshift/network/connectivity/HSConnectivityManager;

    move-result-object v0

    .line 466
    invoke-virtual {v0, p0}, Lcom/helpshift/network/connectivity/HSConnectivityManager;->registerNetworkConnectivityListener(Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;)V

    .line 468
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getAutoRetryFailedEventDM()Lcom/helpshift/common/AutoRetryFailedEventDM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/common/AutoRetryFailedEventDM;->resetBackoff()V

    .line 469
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getAutoRetryFailedEventDM()Lcom/helpshift/common/AutoRetryFailedEventDM;

    move-result-object v0

    sget-object v1, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->CONVERSATION:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    invoke-virtual {v0, v1}, Lcom/helpshift/common/AutoRetryFailedEventDM;->sendEventForcefully(Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;)V

    return-void
.end method

.method public onRootIntentSelected(Lcom/helpshift/conversation/smartintent/RootIntentUIModel;)V
    .registers 3

    .line 930
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->handleRootIntentSelected(Lcom/helpshift/conversation/smartintent/RootIntentUIModel;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 837
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    .line 838
    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->shouldShowUnreadMessagesIndicator()Z

    move-result v0

    const-string v1, "should_show_unread_message_indicator"

    .line 837
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 841
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    .line 842
    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->getSmartIntentInstanceSaveState()Lcom/helpshift/conversation/smartintent/SmartIntentSavedState;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v1, "si_instance_saved_state"

    .line 844
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 846
    :cond_18
    invoke-super {p0, p1}, Lcom/helpshift/support/conversations/BaseConversationFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScreenshotMessageClicked(Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;)V
    .registers 3

    .line 685
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->handleScreenshotMessageClick(Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;)V

    return-void
.end method

.method public onScrolledToBottom()V
    .registers 2

    .line 900
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onScrolledToBottom()V

    return-void
.end method

.method public onScrolledToTop()V
    .registers 2

    .line 895
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onScrolledToTop()V

    return-void
.end method

.method public onScrolling()V
    .registers 2

    .line 905
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onScrolling()V

    return-void
.end method

.method public onSearchIntentSelected(Lcom/helpshift/conversation/smartintent/SearchIntentUIModel;)V
    .registers 3

    .line 940
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->handleSearchIntentSelected(Lcom/helpshift/conversation/smartintent/SearchIntentUIModel;)V

    return-void
.end method

.method public onSendButtonClick()V
    .registers 2

    .line 863
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->sendTextMessage()V

    return-void
.end method

.method public onSkipClick()V
    .registers 2

    .line 885
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onSkipClick()V

    return-void
.end method

.method public onSmartIntentBackButtonPressed()V
    .registers 2

    .line 945
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->handleBackPressedForSmartIntent()Z

    return-void
.end method

.method public onSmartIntentBottomSheetCollapsed()V
    .registers 2

    .line 950
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onSmartIntentBottomSheetCollapsed()V

    return-void
.end method

.method public onSmartIntentBottomSheetExpanded()V
    .registers 2

    .line 955
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onSmartIntentBottomSheetExpanded()V

    return-void
.end method

.method public onSmartIntentSendButtonClick()V
    .registers 2

    .line 966
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onSmartIntentSendButtonClick()V

    return-void
.end method

.method public onSmartIntentTextChanged(Ljava/lang/CharSequence;)V
    .registers 3

    .line 960
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->renderer:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    invoke-virtual {v0}, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->hideSmartIntentReplyValidationFailedError()V

    .line 961
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onSmartIntentTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartNewConversationButtonClick()V
    .registers 2

    .line 516
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onNewConversationButtonClicked()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 509
    iget-object p2, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->renderer:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    invoke-virtual {p2}, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->hideReplyValidationFailedError()V

    if-eqz p1, :cond_13

    .line 510
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 511
    :goto_14
    iget-object p2, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {p2, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->toggleReplySendButton(Z)V

    return-void
.end method

.method public onUserAttachmentMessageClicked(Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;)V
    .registers 3

    .line 690
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->handleUserAttachmentMessageClick(Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    .line 159
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_21

    const-string v1, "issueId"

    .line 161
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationId:Ljava/lang/Long;

    const-string v1, "show_conv_history"

    .line 163
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->shouldShowConversationHistory:Z

    const-string v1, "create_new_pre_issue"

    .line 164
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 167
    :goto_22
    invoke-virtual {p0, p1}, Lcom/helpshift/support/conversations/ConversationalFragment;->initialize(Landroid/view/View;)V

    .line 168
    invoke-super {p0, p1, p2}, Lcom/helpshift/support/conversations/BaseConversationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_48

    const-string p1, "should_show_unread_message_indicator"

    .line 171
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 173
    iget-object v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v1, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateUnreadMessageCountIndicator(Z)V

    const-string p1, "si_instance_saved_state"

    .line 176
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 179
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/helpshift/conversation/smartintent/SmartIntentSavedState;

    .line 180
    iget-object v1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v1, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onRestoreSmartIntentInstanceState(Lcom/helpshift/conversation/smartintent/SmartIntentSavedState;)V

    :cond_48
    if-eqz v0, :cond_51

    if-nez p2, :cond_51

    .line 185
    iget-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->forceClickOnNewConversationButton()V

    :cond_51
    const-string p1, "Helpshift_ConvalFrag"

    const-string p2, "Now showing conversation screen"

    .line 187
    invoke-static {p1, p2}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openFreshConversationScreen(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 797
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/support/fragments/SupportFragment;->getSupportController()Lcom/helpshift/support/controllers/SupportController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpshift/support/controllers/SupportController;->startConversationFlow(Ljava/util/Map;)V

    return-void
.end method

.method public removeSmartIntentViewFromBottomSheet()V
    .registers 2

    .line 925
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/support/fragments/SupportFragment;->hideBottomSheetViewContainer()V

    return-void
.end method

.method public resetToolbarImportanceForAccessibility()V
    .registers 2

    .line 544
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 546
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/SupportFragment;->resetToolbarImportanceForAccessibility()V

    :cond_9
    return-void
.end method

.method public retryMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 3

    .line 663
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->retryMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    return-void
.end method

.method public setToolbarImportanceForAccessibility(I)V
    .registers 3

    .line 536
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 538
    invoke-virtual {v0, p1}, Lcom/helpshift/support/fragments/SupportFragment;->setToolbarImportanceForAccessibility(I)V

    :cond_9
    return-void
.end method

.method public showSmartIntentViewInBottomSheet(Landroid/view/View;I)V
    .registers 4

    .line 919
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/ConversationalFragment;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    .line 920
    invoke-virtual {v0, p1, p2}, Lcom/helpshift/support/fragments/SupportFragment;->showBottomSheetViewContainer(Landroid/view/View;I)V

    return-void
.end method

.method public startLiveUpdates()V
    .registers 2

    .line 850
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    if-eqz v0, :cond_7

    .line 851
    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->startLiveUpdates()V

    :cond_7
    return-void
.end method

.method public stopLiveUpdates()V
    .registers 2

    .line 856
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment;->conversationalVM:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    if-eqz v0, :cond_7

    .line 857
    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->stopLiveUpdates()V

    :cond_7
    return-void
.end method
