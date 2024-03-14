.class public final enum Lcom/helpshift/analytics/AnalyticsEventType;
.super Ljava/lang/Enum;
.source "AnalyticsEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/analytics/AnalyticsEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum ACTION_CARD_CLICKED:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum ADMIN_MESSAGE_DEEPLINK_CLICKED:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum APP_START:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum BROWSED_FAQ_LIST:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum CANCEL_CSAT_RATING:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum CONVERSATION_POSTED:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum DYNAMIC_FORM_CLOSE:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum DYNAMIC_FORM_OPEN:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum LIBRARY_OPENED:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum LIBRARY_OPENED_DECOMP:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum LIBRARY_QUIT:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum LINK_VIA_FAQ:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum MARKED_HELPFUL:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum MARKED_UNHELPFUL:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum MESSAGE_ADDED:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum OPEN_INBOX:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum OPEN_ISSUE:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum PERFORMED_SEARCH:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum READ_FAQ:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum REPORTED_ISSUE:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum RESOLUTION_ACCEPTED:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum RESOLUTION_REJECTED:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum REVIEWED_APP:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum SMART_INTENT_DESELECTION:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum SMART_INTENT_SEARCH_INTENT:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum SMART_INTENT_SELECTION:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum SMART_INTENT_TREE_SHOWN:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum START_CSAT_RATING:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum SUPPORT_LAUNCH:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum TICKET_AVOIDANCE_FAILED:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum TICKET_AVOIDED:Lcom/helpshift/analytics/AnalyticsEventType;

.field public static final enum TIMER_EXPIRED:Lcom/helpshift/analytics/AnalyticsEventType;


# instance fields
.field public final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 8
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const/4 v1, 0x0

    const-string v2, "APP_START"

    const-string v3, "a"

    invoke-direct {v0, v2, v1, v3}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->APP_START:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 9
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const/4 v2, 0x1

    const-string v3, "LIBRARY_OPENED"

    const-string v4, "o"

    invoke-direct {v0, v3, v2, v4}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->LIBRARY_OPENED:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 10
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const/4 v3, 0x2

    const-string v4, "LIBRARY_OPENED_DECOMP"

    const-string v5, "d"

    invoke-direct {v0, v4, v3, v5}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->LIBRARY_OPENED_DECOMP:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 11
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const/4 v4, 0x3

    const-string v5, "SUPPORT_LAUNCH"

    const-string v6, "l"

    invoke-direct {v0, v5, v4, v6}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->SUPPORT_LAUNCH:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 12
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const/4 v5, 0x4

    const-string v6, "PERFORMED_SEARCH"

    const-string v7, "s"

    invoke-direct {v0, v6, v5, v7}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->PERFORMED_SEARCH:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 13
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const/4 v6, 0x5

    const-string v7, "BROWSED_FAQ_LIST"

    const-string v8, "b"

    invoke-direct {v0, v7, v6, v8}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->BROWSED_FAQ_LIST:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 14
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const/4 v7, 0x6

    const-string v8, "READ_FAQ"

    const-string v9, "f"

    invoke-direct {v0, v8, v7, v9}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->READ_FAQ:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 15
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const/4 v8, 0x7

    const-string v9, "MARKED_HELPFUL"

    const-string v10, "h"

    invoke-direct {v0, v9, v8, v10}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->MARKED_HELPFUL:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 16
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v9, 0x8

    const-string v10, "MARKED_UNHELPFUL"

    const-string v11, "u"

    invoke-direct {v0, v10, v9, v11}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->MARKED_UNHELPFUL:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 17
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v10, 0x9

    const-string v11, "REPORTED_ISSUE"

    const-string v12, "i"

    invoke-direct {v0, v11, v10, v12}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->REPORTED_ISSUE:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 18
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v11, 0xa

    const-string v12, "CONVERSATION_POSTED"

    const-string v13, "p"

    invoke-direct {v0, v12, v11, v13}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->CONVERSATION_POSTED:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 19
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v12, 0xb

    const-string v13, "REVIEWED_APP"

    const-string v14, "r"

    invoke-direct {v0, v13, v12, v14}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->REVIEWED_APP:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 20
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v13, 0xc

    const-string v14, "OPEN_ISSUE"

    const-string v15, "c"

    invoke-direct {v0, v14, v13, v15}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->OPEN_ISSUE:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 21
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v14, 0xd

    const-string v15, "OPEN_INBOX"

    const-string v13, "x"

    invoke-direct {v0, v15, v14, v13}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->OPEN_INBOX:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 22
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v13, 0xe

    const-string v15, "LIBRARY_QUIT"

    const-string v14, "q"

    invoke-direct {v0, v15, v13, v14}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->LIBRARY_QUIT:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 23
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const-string v14, "MESSAGE_ADDED"

    const/16 v15, 0xf

    const-string v13, "m"

    invoke-direct {v0, v14, v15, v13}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->MESSAGE_ADDED:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 24
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const-string v13, "RESOLUTION_ACCEPTED"

    const/16 v14, 0x10

    const-string v15, "y"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->RESOLUTION_ACCEPTED:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 25
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const-string v13, "RESOLUTION_REJECTED"

    const/16 v14, 0x11

    const-string v15, "n"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->RESOLUTION_REJECTED:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 26
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const-string v13, "START_CSAT_RATING"

    const/16 v14, 0x12

    const-string v15, "sr"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->START_CSAT_RATING:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 27
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const-string v13, "CANCEL_CSAT_RATING"

    const/16 v14, 0x13

    const-string v15, "cr"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->CANCEL_CSAT_RATING:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 28
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const-string v13, "LINK_VIA_FAQ"

    const/16 v14, 0x14

    const-string v15, "fl"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->LINK_VIA_FAQ:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 29
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const-string v13, "TICKET_AVOIDED"

    const/16 v14, 0x15

    const-string v15, "ta"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->TICKET_AVOIDED:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 30
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const-string v13, "TICKET_AVOIDANCE_FAILED"

    const/16 v14, 0x16

    const-string v15, "taf"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->TICKET_AVOIDANCE_FAILED:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 31
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const-string v13, "DYNAMIC_FORM_OPEN"

    const/16 v14, 0x17

    const-string v15, "dfo"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->DYNAMIC_FORM_OPEN:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 32
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const-string v13, "ADMIN_MESSAGE_DEEPLINK_CLICKED"

    const/16 v14, 0x18

    const-string v15, "ml"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->ADMIN_MESSAGE_DEEPLINK_CLICKED:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 33
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const-string v13, "DYNAMIC_FORM_CLOSE"

    const/16 v14, 0x19

    const-string v15, "dfc"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->DYNAMIC_FORM_CLOSE:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 34
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const-string v13, "SMART_INTENT_TREE_SHOWN"

    const/16 v14, 0x1a

    const-string v15, "its"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->SMART_INTENT_TREE_SHOWN:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 35
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const-string v13, "SMART_INTENT_SELECTION"

    const/16 v14, 0x1b

    const-string v15, "sis"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->SMART_INTENT_SELECTION:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 36
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const-string v13, "SMART_INTENT_DESELECTION"

    const/16 v14, 0x1c

    const-string v15, "sid"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->SMART_INTENT_DESELECTION:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 37
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const-string v13, "SMART_INTENT_SEARCH_INTENT"

    const/16 v14, 0x1d

    const-string v15, "sisr"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->SMART_INTENT_SEARCH_INTENT:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 38
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const-string v13, "ACTION_CARD_CLICKED"

    const/16 v14, 0x1e

    const-string v15, "acl"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->ACTION_CARD_CLICKED:Lcom/helpshift/analytics/AnalyticsEventType;

    .line 39
    new-instance v0, Lcom/helpshift/analytics/AnalyticsEventType;

    const-string v13, "TIMER_EXPIRED"

    const/16 v14, 0x1f

    const-string v15, "te"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/analytics/AnalyticsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->TIMER_EXPIRED:Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v0, 0x20

    .line 6
    new-array v0, v0, [Lcom/helpshift/analytics/AnalyticsEventType;

    sget-object v13, Lcom/helpshift/analytics/AnalyticsEventType;->APP_START:Lcom/helpshift/analytics/AnalyticsEventType;

    aput-object v13, v0, v1

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->LIBRARY_OPENED:Lcom/helpshift/analytics/AnalyticsEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->LIBRARY_OPENED_DECOMP:Lcom/helpshift/analytics/AnalyticsEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->SUPPORT_LAUNCH:Lcom/helpshift/analytics/AnalyticsEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->PERFORMED_SEARCH:Lcom/helpshift/analytics/AnalyticsEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->BROWSED_FAQ_LIST:Lcom/helpshift/analytics/AnalyticsEventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->READ_FAQ:Lcom/helpshift/analytics/AnalyticsEventType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->MARKED_HELPFUL:Lcom/helpshift/analytics/AnalyticsEventType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->MARKED_UNHELPFUL:Lcom/helpshift/analytics/AnalyticsEventType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->REPORTED_ISSUE:Lcom/helpshift/analytics/AnalyticsEventType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->CONVERSATION_POSTED:Lcom/helpshift/analytics/AnalyticsEventType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->REVIEWED_APP:Lcom/helpshift/analytics/AnalyticsEventType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->OPEN_ISSUE:Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->OPEN_INBOX:Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->LIBRARY_QUIT:Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->MESSAGE_ADDED:Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->RESOLUTION_ACCEPTED:Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->RESOLUTION_REJECTED:Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->START_CSAT_RATING:Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->CANCEL_CSAT_RATING:Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->LINK_VIA_FAQ:Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->TICKET_AVOIDED:Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->TICKET_AVOIDANCE_FAILED:Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->DYNAMIC_FORM_OPEN:Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->ADMIN_MESSAGE_DEEPLINK_CLICKED:Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->DYNAMIC_FORM_CLOSE:Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->SMART_INTENT_TREE_SHOWN:Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->SMART_INTENT_SELECTION:Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->SMART_INTENT_DESELECTION:Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->SMART_INTENT_SEARCH_INTENT:Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->ACTION_CARD_CLICKED:Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->TIMER_EXPIRED:Lcom/helpshift/analytics/AnalyticsEventType;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->$VALUES:[Lcom/helpshift/analytics/AnalyticsEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lcom/helpshift/analytics/AnalyticsEventType;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/analytics/AnalyticsEventType;
    .registers 2

    .line 6
    const-class v0, Lcom/helpshift/analytics/AnalyticsEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/analytics/AnalyticsEventType;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/analytics/AnalyticsEventType;
    .registers 1

    .line 6
    sget-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->$VALUES:[Lcom/helpshift/analytics/AnalyticsEventType;

    invoke-virtual {v0}, [Lcom/helpshift/analytics/AnalyticsEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/analytics/AnalyticsEventType;

    return-object v0
.end method
