.class public final Lcom/facebook/appevents/aam/MetadataRule;
.super Ljava/lang/Object;
.source "MetadataRule.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final FIELD_K:Ljava/lang/String; = "k"

.field private static final FIELD_K_DELIMITER:Ljava/lang/String; = ","

.field private static final FIELD_V:Ljava/lang/String; = "v"

.field private static final TAG:Ljava/lang/String; = "com.facebook.appevents.aam.MetadataRule"

.field private static final rules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/appevents/aam/MetadataRule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private keyRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private valRule:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/appevents/aam/MetadataRule;->rules:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/facebook/appevents/aam/MetadataRule;->name:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/facebook/appevents/aam/MetadataRule;->keyRules:Ljava/util/List;

    .line 49
    iput-object p3, p0, Lcom/facebook/appevents/aam/MetadataRule;->valRule:Ljava/lang/String;

    return-void
.end method

.method private static constructRules(Lorg/json/JSONObject;)V
    .registers 8

    const-class v0, Lcom/facebook/appevents/aam/MetadataRule;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 78
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 79
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 81
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_20

    goto :goto_d

    :cond_20
    const-string v3, "k"

    .line 85
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "v"

    .line 86
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_33

    goto :goto_d

    .line 90
    :cond_33
    sget-object v4, Lcom/facebook/appevents/aam/MetadataRule;->rules:Ljava/util/Set;

    new-instance v5, Lcom/facebook/appevents/aam/MetadataRule;

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v5, v1, v3, v2}, Lcom/facebook/appevents/aam/MetadataRule;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_47} :catch_49

    goto :goto_d

    :cond_48
    return-void

    :catch_49
    move-exception p0

    .line 92
    const-class v0, Lcom/facebook/appevents/aam/MetadataRule;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static getEnabledRuleNames()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/aam/MetadataRule;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 95
    :cond_a
    :try_start_a
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 96
    sget-object v2, Lcom/facebook/appevents/aam/MetadataRule;->rules:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/appevents/aam/MetadataRule;

    .line 97
    invoke-virtual {v3}, Lcom/facebook/appevents/aam/MetadataRule;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_28} :catch_2a

    goto :goto_15

    :cond_29
    return-object v0

    :catch_2a
    move-exception v0

    .line 99
    const-class v2, Lcom/facebook/appevents/aam/MetadataRule;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static getRules()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/appevents/aam/MetadataRule;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/aam/MetadataRule;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 53
    :cond_a
    :try_start_a
    new-instance v0, Ljava/util/HashSet;

    sget-object v2, Lcom/facebook/appevents/aam/MetadataRule;->rules:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    const-class v2, Lcom/facebook/appevents/aam/MetadataRule;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static updateRules(Ljava/lang/String;)V
    .registers 2

    const-class v0, Lcom/facebook/appevents/aam/MetadataRule;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 70
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/appevents/aam/MetadataRule;->rules:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 71
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-static {v0}, Lcom/facebook/appevents/aam/MetadataRule;->constructRules(Lorg/json/JSONObject;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_16} :catch_1d
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception p0

    .line 75
    const-class v0, Lcom/facebook/appevents/aam/MetadataRule;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_1d
    :goto_1d
    return-void
.end method


# virtual methods
.method getKeyRules()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 61
    :cond_8
    :try_start_8
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/facebook/appevents/aam/MetadataRule;->keyRules:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method getName()Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 57
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/facebook/appevents/aam/MetadataRule;->name:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method getValRule()Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 65
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/facebook/appevents/aam/MetadataRule;->valRule:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method
