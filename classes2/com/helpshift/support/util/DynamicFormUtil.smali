.class public Lcom/helpshift/support/util/DynamicFormUtil;
.super Ljava/lang/Object;
.source "DynamicFormUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toFlow(Landroid/content/Context;Ljava/util/HashMap;)Lcom/helpshift/support/flows/Flow;
    .registers 8

    const-string v0, "type"

    .line 28
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "config"

    .line 30
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 31
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    :cond_1b
    const-string v2, "titleResourceName"

    .line 33
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_34

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "string"

    invoke-virtual {v3, v2, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :cond_34
    if-nez v3, :cond_3f

    const-string v2, "title"

    .line 42
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_41

    :cond_3f
    const-string v2, ""

    :goto_41
    const-string v4, "faqsFlow"

    .line 45
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    if-eqz v3, :cond_52

    .line 47
    new-instance p0, Lcom/helpshift/support/flows/FAQsFlow;

    invoke-direct {p0, v3, v1}, Lcom/helpshift/support/flows/FAQsFlow;-><init>(ILjava/util/Map;)V

    goto/16 :goto_cb

    .line 50
    :cond_52
    new-instance p0, Lcom/helpshift/support/flows/FAQsFlow;

    invoke-direct {p0, v2, v1}, Lcom/helpshift/support/flows/FAQsFlow;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_cb

    :cond_59
    const-string v4, "conversationFlow"

    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    if-eqz v3, :cond_69

    .line 55
    new-instance p0, Lcom/helpshift/support/flows/ConversationFlow;

    invoke-direct {p0, v3, v1}, Lcom/helpshift/support/flows/ConversationFlow;-><init>(ILjava/util/Map;)V

    goto :goto_cb

    .line 58
    :cond_69
    new-instance p0, Lcom/helpshift/support/flows/ConversationFlow;

    invoke-direct {p0, v2, v1}, Lcom/helpshift/support/flows/ConversationFlow;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_cb

    :cond_6f
    const-string v4, "faqSectionFlow"

    .line 61
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "data"

    if-eqz v4, :cond_8d

    .line 62
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz v3, :cond_87

    .line 64
    new-instance p1, Lcom/helpshift/support/flows/FAQSectionFlow;

    invoke-direct {p1, v3, p0, v1}, Lcom/helpshift/support/flows/FAQSectionFlow;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_c8

    .line 67
    :cond_87
    new-instance p1, Lcom/helpshift/support/flows/FAQSectionFlow;

    invoke-direct {p1, v2, p0, v1}, Lcom/helpshift/support/flows/FAQSectionFlow;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_c8

    :cond_8d
    const-string v4, "singleFaqFlow"

    .line 70
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 71
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz v3, :cond_a3

    .line 73
    new-instance p1, Lcom/helpshift/support/flows/SingleFAQFlow;

    invoke-direct {p1, v3, p0, v1}, Lcom/helpshift/support/flows/SingleFAQFlow;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_c8

    .line 76
    :cond_a3
    new-instance p1, Lcom/helpshift/support/flows/SingleFAQFlow;

    invoke-direct {p1, v2, p0, v1}, Lcom/helpshift/support/flows/SingleFAQFlow;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_c8

    :cond_a9
    const-string v1, "dynamicFormFlow"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 80
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 81
    invoke-static {p0, p1}, Lcom/helpshift/support/util/DynamicFormUtil;->toFlowList(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-eqz v3, :cond_c3

    .line 83
    new-instance p1, Lcom/helpshift/support/flows/DynamicFormFlow;

    invoke-direct {p1, v3, p0}, Lcom/helpshift/support/flows/DynamicFormFlow;-><init>(ILjava/util/List;)V

    goto :goto_c8

    .line 86
    :cond_c3
    new-instance p1, Lcom/helpshift/support/flows/DynamicFormFlow;

    invoke-direct {p1, v2, p0}, Lcom/helpshift/support/flows/DynamicFormFlow;-><init>(Ljava/lang/String;Ljava/util/List;)V

    :goto_c8
    move-object p0, p1

    goto :goto_cb

    :cond_ca
    const/4 p0, 0x0

    :goto_cb
    return-object p0
.end method

.method public static toFlowList(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/helpshift/support/flows/Flow;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 21
    invoke-static {p0, v1}, Lcom/helpshift/support/util/DynamicFormUtil;->toFlow(Landroid/content/Context;Ljava/util/HashMap;)Lcom/helpshift/support/flows/Flow;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return-object v0
.end method
