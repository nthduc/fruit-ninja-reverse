.class Lcom/google/firebase/functions/Serializer;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-functions@@19.0.2"


# static fields
.field static final LONG_TYPE:Ljava/lang/String; = "type.googleapis.com/google.protobuf.Int64Value"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final UNSIGNED_LONG_TYPE:Ljava/lang/String; = "type.googleapis.com/google.protobuf.UInt64Value"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/google/firebase/functions/Serializer;->dateFormat:Ljava/text/DateFormat;

    .line 44
    iget-object v0, p0, Lcom/google/firebase/functions/Serializer;->dateFormat:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 138
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_5

    return-object p1

    .line 141
    :cond_5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    return-object p1

    .line 144
    :cond_a
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    return-object p1

    .line 147
    :cond_f
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_97

    .line 148
    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "@type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 149
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    .line 150
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.protobuf.Int64Value"

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Invalid Long format:"

    if-eqz v2, :cond_4f

    .line 154
    :try_start_31
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_39} :catch_3a

    return-object p1

    .line 156
    :catch_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4f
    const-string v2, "type.googleapis.com/google.protobuf.UInt64Value"

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 163
    :try_start_57
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_5f} :catch_60

    return-object p1

    .line 165
    :catch_60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 171
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 172
    :goto_7e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 173
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 174
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/firebase/functions/Serializer;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 175
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7e

    :cond_96
    return-object v0

    .line 179
    :cond_97
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_b9

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 181
    :goto_a1
    move-object v2, p1

    check-cast v2, Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_b8

    .line 182
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/firebase/functions/Serializer;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 183
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a1

    :cond_b8
    return-object v0

    .line 187
    :cond_b9
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_bf

    const/4 p1, 0x0

    return-object p1

    .line 190
    :cond_bf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object cannot be decoded from JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    if-eqz p1, :cond_113

    .line 48
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_8

    goto/16 :goto_113

    .line 51
    :cond_8
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2b

    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_11
    const-string v1, "@type"

    const-string v2, "type.googleapis.com/google.protobuf.Int64Value"

    .line 55
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "value"

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_21} :catch_22

    return-object v0

    :catch_22
    move-exception p1

    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error encoding Long."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 63
    :cond_2b
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_30

    return-object p1

    .line 66
    :cond_30
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_35

    return-object p1

    .line 69
    :cond_35
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3a

    return-object p1

    .line 72
    :cond_3a
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_3f

    return-object p1

    .line 75
    :cond_3f
    instance-of v1, p1, Lorg/json/JSONArray;

    if-eqz v1, :cond_44

    return-object p1

    .line 78
    :cond_44
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_84

    .line 79
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 80
    check-cast p1, Ljava/util/Map;

    .line 81
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 82
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_7b

    .line 85
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 86
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/firebase/functions/Serializer;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 88
    :try_start_70
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_57

    :catch_74
    move-exception p1

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 83
    :cond_7b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object keys must be strings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_83
    return-object v0

    .line 96
    :cond_84
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_a6

    .line 97
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 98
    check-cast p1, Ljava/util/List;

    .line 99
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_93
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 100
    invoke-virtual {p0, v1}, Lcom/google/firebase/functions/Serializer;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_93

    :cond_a5
    return-object v0

    :cond_a6
    if-eqz v0, :cond_dd

    .line 105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 106
    check-cast p1, Lorg/json/JSONObject;

    .line 107
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 108
    :goto_b3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 109
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_d4

    .line 114
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/firebase/functions/Serializer;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 116
    :try_start_c9
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_cc
    .catch Lorg/json/JSONException; {:try_start_c9 .. :try_end_cc} :catch_cd

    goto :goto_b3

    :catch_cd
    move-exception p1

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 111
    :cond_d4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object keys cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_dc
    return-object v0

    :cond_dd
    if-eqz v1, :cond_fc

    .line 125
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 126
    check-cast p1, Lorg/json/JSONArray;

    const/4 v1, 0x0

    .line 127
    :goto_e7
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_fb

    .line 128
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    .line 129
    invoke-virtual {p0, v2}, Lcom/google/firebase/functions/Serializer;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_e7

    :cond_fb
    return-object v0

    .line 133
    :cond_fc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object cannot be encoded in JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_113
    :goto_113
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object p1
.end method
