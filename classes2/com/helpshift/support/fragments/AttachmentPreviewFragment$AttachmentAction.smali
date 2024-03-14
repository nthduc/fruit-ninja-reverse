.class public final enum Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;
.super Ljava/lang/Enum;
.source "AttachmentPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/fragments/AttachmentPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttachmentAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

.field public static final enum ADD:Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

.field public static final enum CHANGE:Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

.field public static final enum REMOVE:Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

.field public static final enum SEND:Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 341
    new-instance v0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    const/4 v1, 0x0

    const-string v2, "ADD"

    invoke-direct {v0, v2, v1}, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;->ADD:Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    .line 342
    new-instance v0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    const/4 v2, 0x1

    const-string v3, "SEND"

    invoke-direct {v0, v3, v2}, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;->SEND:Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    .line 343
    new-instance v0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    const/4 v3, 0x2

    const-string v4, "REMOVE"

    invoke-direct {v0, v4, v3}, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;->REMOVE:Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    .line 344
    new-instance v0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    const/4 v4, 0x3

    const-string v5, "CHANGE"

    invoke-direct {v0, v5, v4}, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;->CHANGE:Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    const/4 v0, 0x4

    .line 340
    new-array v0, v0, [Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    sget-object v5, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;->ADD:Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    aput-object v5, v0, v1

    sget-object v1, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;->SEND:Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;->REMOVE:Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;->CHANGE:Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;->$VALUES:[Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 340
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;
    .registers 2

    .line 340
    const-class v0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;
    .registers 1

    .line 340
    sget-object v0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;->$VALUES:[Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    invoke-virtual {v0}, [Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/support/fragments/AttachmentPreviewFragment$AttachmentAction;

    return-object v0
.end method
