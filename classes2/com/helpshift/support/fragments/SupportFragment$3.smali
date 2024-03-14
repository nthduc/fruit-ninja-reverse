.class synthetic Lcom/helpshift/support/fragments/SupportFragment$3;
.super Ljava/lang/Object;
.source "SupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/fragments/SupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$helpshift$support$fragments$HSMenuItemType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 789
    invoke-static {}, Lcom/helpshift/support/fragments/HSMenuItemType;->values()[Lcom/helpshift/support/fragments/HSMenuItemType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpshift/support/fragments/SupportFragment$3;->$SwitchMap$com$helpshift$support$fragments$HSMenuItemType:[I

    :try_start_9
    sget-object v0, Lcom/helpshift/support/fragments/SupportFragment$3;->$SwitchMap$com$helpshift$support$fragments$HSMenuItemType:[I

    sget-object v1, Lcom/helpshift/support/fragments/HSMenuItemType;->START_NEW_CONVERSATION:Lcom/helpshift/support/fragments/HSMenuItemType;

    invoke-virtual {v1}, Lcom/helpshift/support/fragments/HSMenuItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/helpshift/support/fragments/SupportFragment$3;->$SwitchMap$com$helpshift$support$fragments$HSMenuItemType:[I

    sget-object v1, Lcom/helpshift/support/fragments/HSMenuItemType;->SCREENSHOT_ATTACHMENT:Lcom/helpshift/support/fragments/HSMenuItemType;

    invoke-virtual {v1}, Lcom/helpshift/support/fragments/HSMenuItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
