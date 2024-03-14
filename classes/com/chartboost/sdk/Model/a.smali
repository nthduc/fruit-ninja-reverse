.class public Lcom/chartboost/sdk/Model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/json/JSONObject;

.field public b:I

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Model/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final o:I

.field public p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public r:Lcom/chartboost/sdk/Model/b;

.field public final s:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->a:Lorg/json/JSONObject;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/chartboost/sdk/Model/a;->b:I

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/util/Map;

    const-string v0, "dummy_template"

    .line 9
    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->e:Ljava/lang/String;

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->g:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->h:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->i:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->j:Ljava/lang/String;

    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/chartboost/sdk/Model/a;->k:I

    .line 18
    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->l:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->m:Ljava/lang/String;

    .line 20
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/chartboost/sdk/Model/a;->n:Ljava/util/Map;

    .line 23
    iput v1, p0, Lcom/chartboost/sdk/Model/a;->o:I

    .line 24
    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->p:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->q:Ljava/lang/String;

    .line 27
    new-instance v1, Lcom/chartboost/sdk/Model/b;

    invoke-direct {v1, v0, v0, v0}, Lcom/chartboost/sdk/Model/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Model/b;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->s:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/chartboost/sdk/Model/a;->b:I

    .line 32
    iput-object p2, p0, Lcom/chartboost/sdk/Model/a;->a:Lorg/json/JSONObject;

    const-string v0, "ad_id"

    .line 34
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    const-string v0, "cgn"

    .line 35
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->g:Ljava/lang/String;

    const-string v0, "creative"

    .line 36
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->h:Ljava/lang/String;

    const-string v0, "deep-link"

    .line 37
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->i:Ljava/lang/String;

    const-string v0, "link"

    .line 38
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->j:Ljava/lang/String;

    const-string v0, "to"

    .line 39
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->m:Ljava/lang/String;

    const-string v0, "animation"

    .line 40
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/Model/a;->o:I

    const-string v0, "media-type"

    .line 41
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->p:Ljava/lang/String;

    const-string v0, "name"

    .line 42
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->q:Ljava/lang/String;

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/util/Map;

    .line 46
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->n:Ljava/util/Map;

    .line 47
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->s:Ljava/util/HashSet;

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_15f

    const-string p1, "webview"

    .line 52
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "elements"

    .line 53
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    move-object v3, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 54
    :goto_80
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v5

    const-string v6, "body"

    if-ge v1, v5, :cond_ed

    .line 55
    invoke-virtual {p3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 56
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "param"

    .line 57
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "type"

    .line 58
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "value"

    .line 59
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c8

    .line 62
    iget-object v6, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/util/Map;

    invoke-interface {v6, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "reward_amount"

    .line 63
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_be

    .line 64
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_ea

    :cond_be
    const-string v6, "reward_currency"

    .line 65
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ea

    move-object v3, v5

    goto :goto_ea

    :cond_c8
    const-string v8, "html"

    .line 70
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d7

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_d7

    goto :goto_e0

    .line 72
    :cond_d7
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_df

    move-object v6, v7

    goto :goto_e0

    :cond_df
    move-object v6, v9

    .line 92
    :goto_e0
    new-instance v8, Lcom/chartboost/sdk/Model/b;

    invoke-direct {v8, v10, v7, v5}, Lcom/chartboost/sdk/Model/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v5, p0, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ea
    :goto_ea
    add-int/lit8 v1, v1, 0x1

    goto :goto_80

    .line 96
    :cond_ed
    iput v4, p0, Lcom/chartboost/sdk/Model/a;->k:I

    .line 97
    iput-object v3, p0, Lcom/chartboost/sdk/Model/a;->l:Ljava/lang/String;

    .line 98
    iget-object p3, p0, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/chartboost/sdk/Model/b;

    iput-object p3, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Model/b;

    if-eqz p3, :cond_157

    const-string p3, "template"

    .line 101
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->e:Ljava/lang/String;

    const-string p1, "events"

    .line 103
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_13d

    .line 105
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p3

    :goto_111
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 106
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 108
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 109
    :goto_127
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_137

    .line 110
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_127

    .line 112
    :cond_137
    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->n:Ljava/util/Map;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_111

    :cond_13d
    const-string p1, "certification_providers"

    .line 116
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1fe

    .line 118
    :goto_145
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v2, p2, :cond_1fe

    .line 119
    iget-object p2, p0, Lcom/chartboost/sdk/Model/a;->s:Ljava/util/HashSet;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_145

    .line 120
    :cond_157
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "WebView AdUnit does not have a template html body asset"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15f
    const/4 p1, 0x0

    if-eqz p3, :cond_18a

    const-string p3, "icons"

    .line 144
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "lg"

    .line 145
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "/"

    .line 146
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    .line 147
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v3, p0, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    new-instance v4, Lcom/chartboost/sdk/Model/b;

    const-string v5, "inPlayIcons"

    invoke-direct {v4, v5, v0, p2}, Lcom/chartboost/sdk/Model/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, p3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iput v2, p0, Lcom/chartboost/sdk/Model/a;->k:I

    .line 150
    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->l:Ljava/lang/String;

    goto :goto_1fa

    :cond_18a
    const-string p3, "assets"

    .line 152
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    .line 153
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_194
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ea

    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "video-portrait"

    .line 156
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b8

    const-string v4, "video-landscape"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b5

    goto :goto_1b8

    :cond_1b5
    const-string v4, "images"

    goto :goto_1ba

    :cond_1b8
    :goto_1b8
    const-string v4, "videos"

    :goto_1ba
    const-string v5, "id"

    .line 160
    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1d9

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checksum"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1d9
    const-string v6, "url"

    .line 164
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    iget-object v6, p0, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    new-instance v7, Lcom/chartboost/sdk/Model/b;

    invoke-direct {v7, v4, v5, v3}, Lcom/chartboost/sdk/Model/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_194

    :cond_1ea
    const-string p3, "reward"

    .line 168
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/chartboost/sdk/Model/a;->k:I

    const-string p3, "currency-name"

    .line 169
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/chartboost/sdk/Model/a;->l:Ljava/lang/String;

    .line 171
    :goto_1fa
    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Model/b;

    .line 172
    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->e:Ljava/lang/String;

    :cond_1fe
    return-void
.end method
