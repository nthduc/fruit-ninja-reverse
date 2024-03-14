.class synthetic Lcom/helpshift/support/ContactUsFilter$1;
.super Ljava/lang/Object;
.source "ContactUsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/ContactUsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$helpshift$support$ContactUsFilter$LOCATION:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 66
    invoke-static {}, Lcom/helpshift/support/ContactUsFilter$LOCATION;->values()[Lcom/helpshift/support/ContactUsFilter$LOCATION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpshift/support/ContactUsFilter$1;->$SwitchMap$com$helpshift$support$ContactUsFilter$LOCATION:[I

    :try_start_9
    sget-object v0, Lcom/helpshift/support/ContactUsFilter$1;->$SwitchMap$com$helpshift$support$ContactUsFilter$LOCATION:[I

    sget-object v1, Lcom/helpshift/support/ContactUsFilter$LOCATION;->SEARCH_FOOTER:Lcom/helpshift/support/ContactUsFilter$LOCATION;

    invoke-virtual {v1}, Lcom/helpshift/support/ContactUsFilter$LOCATION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/helpshift/support/ContactUsFilter$1;->$SwitchMap$com$helpshift$support$ContactUsFilter$LOCATION:[I

    sget-object v1, Lcom/helpshift/support/ContactUsFilter$LOCATION;->QUESTION_ACTION_BAR:Lcom/helpshift/support/ContactUsFilter$LOCATION;

    invoke-virtual {v1}, Lcom/helpshift/support/ContactUsFilter$LOCATION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
