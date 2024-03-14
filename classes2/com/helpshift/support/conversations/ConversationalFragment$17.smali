.class synthetic Lcom/helpshift/support/conversations/ConversationalFragment$17;
.super Ljava/lang/Object;
.source "ConversationalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/conversations/ConversationalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$helpshift$common$platform$Device$PermissionState:[I

.field static final synthetic $SwitchMap$com$helpshift$support$fragments$AttachmentPreviewFragment$AttachmentAction:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 735
    invoke-static {}, Lcom/helpshift/common/platform/Device$PermissionState;->values()[Lcom/helpshift/common/platform/Device$PermissionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpshift/support/conversations/ConversationalFragment$17;->$SwitchMap$com$helpshift$common$platform$Device$PermissionState:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/helpshift/support/conversations/ConversationalFragment$17;->$SwitchMap$com$helpshift$common$platform$Device$PermissionState:[I

    sget-object v2, Lcom/helpshift/common/platform/Device$PermissionState;->AVAILABLE:Lcom/helpshift/common/platform/Device$PermissionState;

    invoke-virtual {v2}, Lcom/helpshift/common/platform/Device$PermissionState;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v1, Lcom/helpshift/support/conversations/ConversationalFragment$17;->$SwitchMap$com$helpshift$common$platform$Device$PermissionState:[I

    sget-object v2, Lcom/helpshift/common/platform/Device$PermissionState;->UNAVAILABLE:Lcom/helpshift/common/platform/Device$PermissionState;

    invoke-virtual {v2}, Lcom/helpshift/common/platform/Device$PermissionState;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v1, Lcom/helpshift/support/conversations/ConversationalFragment$17;->$SwitchMap$com$helpshift$common$platform$Device$PermissionState:[I

    sget-object v2, Lcom/helpshift/common/platform/Device$PermissionState;->REQUESTABLE:Lcom/helpshift/common/platform/Device$PermissionState;

    invoke-virtual {v2}, Lcom/helpshift/common/platform/Device$PermissionState;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    .line 615
    :catch_2a
    invoke-static {}, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;->values()[Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/helpshift/support/conversations/ConversationalFragment$17;->$SwitchMap$com$helpshift$support$fragments$AttachmentPreviewFragment$AttachmentAction:[I

    :try_start_33
    sget-object v1, Lcom/helpshift/support/conversations/ConversationalFragment$17;->$SwitchMap$com$helpshift$support$fragments$AttachmentPreviewFragment$AttachmentAction:[I

    sget-object v2, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;->SEND:Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    invoke-virtual {v2}, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3d} :catch_3d

    :catch_3d
    return-void
.end method
