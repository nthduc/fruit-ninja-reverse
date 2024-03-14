.class synthetic Lcom/helpshift/support/conversations/NewConversationFragment$15;
.super Ljava/lang/Object;
.source "NewConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/conversations/NewConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$helpshift$support$fragments$AttachmentPreviewFragment$AttachmentAction:[I

.field static final synthetic $SwitchMap$com$helpshift$support$fragments$HSMenuItemType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 464
    invoke-static {}, Lcom/helpshift/support/fragments/HSMenuItemType;->values()[Lcom/helpshift/support/fragments/HSMenuItemType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpshift/support/conversations/NewConversationFragment$15;->$SwitchMap$com$helpshift$support$fragments$HSMenuItemType:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/helpshift/support/conversations/NewConversationFragment$15;->$SwitchMap$com$helpshift$support$fragments$HSMenuItemType:[I

    sget-object v2, Lcom/helpshift/support/fragments/HSMenuItemType;->START_NEW_CONVERSATION:Lcom/helpshift/support/fragments/HSMenuItemType;

    invoke-virtual {v2}, Lcom/helpshift/support/fragments/HSMenuItemType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/helpshift/support/conversations/NewConversationFragment$15;->$SwitchMap$com$helpshift$support$fragments$HSMenuItemType:[I

    sget-object v3, Lcom/helpshift/support/fragments/HSMenuItemType;->SCREENSHOT_ATTACHMENT:Lcom/helpshift/support/fragments/HSMenuItemType;

    invoke-virtual {v3}, Lcom/helpshift/support/fragments/HSMenuItemType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    .line 391
    :catch_1f
    invoke-static {}, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;->values()[Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/helpshift/support/conversations/NewConversationFragment$15;->$SwitchMap$com$helpshift$support$fragments$AttachmentPreviewFragment$AttachmentAction:[I

    :try_start_28
    sget-object v2, Lcom/helpshift/support/conversations/NewConversationFragment$15;->$SwitchMap$com$helpshift$support$fragments$AttachmentPreviewFragment$AttachmentAction:[I

    sget-object v3, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;->ADD:Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    invoke-virtual {v3}, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_32} :catch_32

    :catch_32
    :try_start_32
    sget-object v0, Lcom/helpshift/support/conversations/NewConversationFragment$15;->$SwitchMap$com$helpshift$support$fragments$AttachmentPreviewFragment$AttachmentAction:[I

    sget-object v2, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;->REMOVE:Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    invoke-virtual {v2}, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3c} :catch_3c

    :catch_3c
    return-void
.end method
