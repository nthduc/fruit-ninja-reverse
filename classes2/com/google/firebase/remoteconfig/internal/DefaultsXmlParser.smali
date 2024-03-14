.class public Lcom/google/firebase/remoteconfig/internal/DefaultsXmlParser;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-config@@19.1.4"


# static fields
.field private static final XML_TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final XML_TAG_KEY:Ljava/lang/String; = "key"

.field private static final XML_TAG_VALUE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultsFromXml(Landroid/content/Context;I)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "FirebaseRemoteConfig"

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 80
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-nez p0, :cond_13

    const-string p0, "Could not find the resources of the current context while trying to set defaults from an XML."

    .line 82
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 89
    :cond_13
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    .line 95
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result p1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :goto_1f
    const/4 v6, 0x1

    if-eq p1, v6, :cond_96

    const/4 v7, 0x2

    if-ne p1, v7, :cond_2c

    .line 98
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    goto/16 :goto_89

    :cond_2c
    const/4 v7, 0x3

    if-ne p1, v7, :cond_4c

    .line 100
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "entry"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    if-eqz v4, :cond_43

    if-eqz v5, :cond_43

    .line 102
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    :cond_43
    const-string p1, "An entry in the defaults XML has an invalid key and/or value tag."

    .line 104
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_48
    move-object v4, v2

    move-object v5, v4

    :cond_4a
    move-object v3, v2

    goto :goto_89

    :cond_4c
    const/4 v7, 0x4

    if-ne p1, v7, :cond_89

    if-eqz v3, :cond_89

    const/4 p1, -0x1

    .line 112
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x19e5f

    if-eq v7, v8, :cond_6b

    const v8, 0x6ac9171

    if-eq v7, v8, :cond_61

    goto :goto_74

    :cond_61
    const-string v7, "value"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    const/4 p1, 0x1

    goto :goto_74

    :cond_6b
    const-string v7, "key"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    const/4 p1, 0x0

    :cond_74
    :goto_74
    if-eqz p1, :cond_84

    if-eq p1, v6, :cond_7e

    const-string p1, "Encountered an unexpected tag while parsing the defaults XML."

    .line 120
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 117
    :cond_7e
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_89

    .line 114
    :cond_84
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    .line 125
    :cond_89
    :goto_89
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p1
    :try_end_8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_8d} :catch_90
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_8d} :catch_8e

    goto :goto_1f

    :catch_8e
    move-exception p0

    goto :goto_91

    :catch_90
    move-exception p0

    :goto_91
    const-string p1, "Encountered an error while parsing the defaults XML file."

    .line 128
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_96
    return-object v1
.end method
