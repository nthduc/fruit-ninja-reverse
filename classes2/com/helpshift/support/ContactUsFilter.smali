.class public final Lcom/helpshift/support/ContactUsFilter;
.super Ljava/lang/Object;
.source "ContactUsFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/ContactUsFilter$LOCATION;
    }
.end annotation


# static fields
.field private static data:Lcom/helpshift/support/HSApiData;

.field private static enableContactUs:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    .line 15
    sget-object v0, Lcom/helpshift/support/ContactUsFilter;->data:Lcom/helpshift/support/HSApiData;

    if-nez v0, :cond_21

    .line 16
    new-instance v0, Lcom/helpshift/support/HSApiData;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/helpshift/support/ContactUsFilter;->data:Lcom/helpshift/support/HSApiData;

    .line 17
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object p0

    invoke-interface {p0}, Lcom/helpshift/CoreApi;->getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    move-result-object p0

    invoke-virtual {p0}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getEnableContactUs()Lcom/helpshift/configuration/dto/RootApiConfig$EnableContactUs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/helpshift/configuration/dto/RootApiConfig$EnableContactUs;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/helpshift/support/ContactUsFilter;->enableContactUs:Ljava/lang/Integer;

    :cond_21
    return-void
.end method

.method protected static setConfig(Ljava/util/HashMap;)V
    .registers 4

    if-nez p0, :cond_7

    .line 23
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_7
    const-string v0, "enableContactUs"

    .line 26
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 28
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1a

    .line 29
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    sput-object p0, Lcom/helpshift/support/ContactUsFilter;->enableContactUs:Ljava/lang/Integer;

    goto :goto_2f

    .line 31
    :cond_1a
    instance-of p0, v1, Ljava/lang/Boolean;

    if-eqz p0, :cond_2f

    .line 32
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 33
    sget-object p0, Lcom/helpshift/support/SupportInternal$EnableContactUs;->ALWAYS:Ljava/lang/Integer;

    sput-object p0, Lcom/helpshift/support/ContactUsFilter;->enableContactUs:Ljava/lang/Integer;

    goto :goto_2f

    .line 36
    :cond_2b
    sget-object p0, Lcom/helpshift/support/SupportInternal$EnableContactUs;->NEVER:Ljava/lang/Integer;

    sput-object p0, Lcom/helpshift/support/ContactUsFilter;->enableContactUs:Ljava/lang/Integer;

    :cond_2f
    :goto_2f
    return-void
.end method

.method public static showContactUs(Lcom/helpshift/support/ContactUsFilter$LOCATION;)Z
    .registers 5

    .line 43
    sget-object v0, Lcom/helpshift/support/ContactUsFilter$LOCATION;->SEARCH_RESULT_ACTIVITY_HEADER:Lcom/helpshift/support/ContactUsFilter$LOCATION;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_60

    sget-object v0, Lcom/helpshift/support/SupportInternal$EnableContactUs;->NEVER:Ljava/lang/Integer;

    sget-object v2, Lcom/helpshift/support/ContactUsFilter;->enableContactUs:Ljava/lang/Integer;

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_60

    .line 49
    :cond_10
    sget-object v0, Lcom/helpshift/support/SupportInternal$EnableContactUs;->ALWAYS:Ljava/lang/Integer;

    sget-object v2, Lcom/helpshift/support/ContactUsFilter;->enableContactUs:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_5f

    sget-object v0, Lcom/helpshift/support/ContactUsFilter$LOCATION;->QUESTION_FOOTER:Lcom/helpshift/support/ContactUsFilter$LOCATION;

    if-ne p0, v0, :cond_20

    goto :goto_5f

    .line 55
    :cond_20
    sget-object v0, Lcom/helpshift/support/ContactUsFilter$LOCATION;->ACTION_BAR:Lcom/helpshift/support/ContactUsFilter$LOCATION;

    if-ne p0, v0, :cond_30

    .line 56
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object p0

    invoke-interface {p0}, Lcom/helpshift/CoreApi;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object p0

    if-eqz p0, :cond_2f

    const/4 v1, 0x1

    :cond_2f
    return v1

    .line 61
    :cond_30
    sget-object v0, Lcom/helpshift/support/SupportInternal$EnableContactUs;->AFTER_VIEWING_FAQS:Ljava/lang/Integer;

    sget-object v3, Lcom/helpshift/support/ContactUsFilter;->enableContactUs:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    return v2

    .line 65
    :cond_3b
    sget-object v0, Lcom/helpshift/support/SupportInternal$EnableContactUs;->AFTER_MARKING_ANSWER_UNHELPFUL:Ljava/lang/Integer;

    sget-object v3, Lcom/helpshift/support/ContactUsFilter;->enableContactUs:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 66
    sget-object v0, Lcom/helpshift/support/ContactUsFilter$1;->$SwitchMap$com$helpshift$support$ContactUsFilter$LOCATION:[I

    invoke-virtual {p0}, Lcom/helpshift/support/ContactUsFilter$LOCATION;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-eq p0, v2, :cond_5e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_53

    return v2

    .line 70
    :cond_53
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object p0

    invoke-interface {p0}, Lcom/helpshift/CoreApi;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object p0

    if-eqz p0, :cond_5e

    const/4 v1, 0x1

    :cond_5e
    return v1

    :cond_5f
    :goto_5f
    return v2

    :cond_60
    :goto_60
    return v1
.end method
