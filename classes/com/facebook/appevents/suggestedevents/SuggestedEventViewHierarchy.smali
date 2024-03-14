.class Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;
.super Ljava/lang/Object;
.source "SuggestedEventViewHierarchy.java"


# static fields
.field static final TAG:Ljava/lang/String; = "com.facebook.appevents.suggestedevents.SuggestedEventViewHierarchy"

.field private static final blacklistedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/widget/Switch;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/widget/Spinner;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Landroid/widget/DatePicker;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-class v2, Landroid/widget/TimePicker;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-class v2, Landroid/widget/RadioGroup;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-class v2, Landroid/widget/RatingBar;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-class v2, Landroid/widget/EditText;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-class v2, Landroid/widget/AdapterView;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 49
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;->blacklistedViews:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAllClickableViews(Landroid/view/View;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 104
    :cond_a
    :try_start_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    sget-object v2, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;->blacklistedViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 107
    invoke-virtual {v3, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    return-object v0

    .line 112
    :cond_28
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 113
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_31
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getChildrenOfView(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    .line 117
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_39
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 118
    invoke-static {v2}, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;->getAllClickableViews(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_4c} :catch_4e

    goto :goto_39

    :cond_4d
    return-object v0

    :catch_4e
    move-exception p0

    .line 120
    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static getDictionaryOfView(Landroid/view/View;Landroid/view/View;)Lorg/json/JSONObject;
    .registers 7

    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 60
    :cond_a
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_40

    if-ne p0, p1, :cond_17

    :try_start_11
    const-string v2, "is_interacted"

    const/4 v3, 0x1

    .line 63
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 65
    :cond_17
    invoke-static {p0, v0}, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;->updateBasicInfo(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 67
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 68
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getChildrenOfView(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    const/4 v3, 0x0

    .line 69
    :goto_24
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3a

    .line 70
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 71
    invoke-static {v4, p1}, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;->getDictionaryOfView(Landroid/view/View;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 72
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_3a
    const-string p0, "childviews"

    .line 74
    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_3f} :catch_3f
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_3f} :catch_40

    :catch_3f
    return-object v0

    :catch_40
    move-exception p0

    .line 79
    const-class p1, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static getTextOfChildren(Landroid/view/View;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 133
    :cond_a
    :try_start_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getChildrenOfView(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    .line 135
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 136
    invoke-static {v2}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_30

    .line 138
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_30
    invoke-static {v2}, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;->getTextOfChildren(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_37} :catch_39

    goto :goto_17

    :cond_38
    return-object v0

    :catch_39
    move-exception p0

    .line 142
    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static getTextOfViewRecursively(Landroid/view/View;)Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 124
    :cond_a
    :try_start_a
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    return-object v0

    .line 128
    :cond_15
    invoke-static {p0}, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;->getTextOfChildren(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    const-string v0, " "

    .line 129
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1f} :catch_20

    return-object p0

    :catch_20
    move-exception p0

    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static updateBasicInfo(Landroid/view/View;Lorg/json/JSONObject;)V
    .registers 6

    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 84
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getHintOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "classname"

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "classtypebitmask"

    .line 88
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getClassTypeBitmask(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "text"

    .line 90
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    :cond_32
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "hint"

    .line 93
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    :cond_3d
    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_53

    const-string v0, "inputtype"

    .line 96
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_4c} :catch_53
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_4c} :catch_4d

    goto :goto_53

    :catch_4d
    move-exception p0

    .line 101
    const-class p1, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_53
    :cond_53
    :goto_53
    return-void
.end method
