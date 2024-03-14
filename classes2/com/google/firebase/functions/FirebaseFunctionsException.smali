.class public Lcom/google/firebase/functions/FirebaseFunctionsException;
.super Lcom/google/firebase/FirebaseException;
.source "com.google.firebase:firebase-functions@@19.0.2"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/functions/FirebaseFunctionsException$Code;
    }
.end annotation


# instance fields
.field private final code:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final details:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/firebase/functions/FirebaseFunctionsException$Code;Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/functions/FirebaseFunctionsException$Code;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 231
    invoke-direct {p0, p1}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    .line 232
    iput-object p2, p0, Lcom/google/firebase/functions/FirebaseFunctionsException;->code:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    .line 233
    iput-object p3, p0, Lcom/google/firebase/functions/FirebaseFunctionsException;->details:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/firebase/functions/FirebaseFunctionsException$Code;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/functions/FirebaseFunctionsException$Code;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 238
    invoke-direct {p0, p1, p4}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    iput-object p2, p0, Lcom/google/firebase/functions/FirebaseFunctionsException;->code:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    .line 240
    iput-object p3, p0, Lcom/google/firebase/functions/FirebaseFunctionsException;->details:Ljava/lang/Object;

    return-void
.end method

.method static fromResponse(Lcom/google/firebase/functions/FirebaseFunctionsException$Code;Ljava/lang/String;Lcom/google/firebase/functions/Serializer;)Lcom/google/firebase/functions/FirebaseFunctionsException;
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "status"

    const-string v1, "message"

    .line 189
    invoke-virtual {p0}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 194
    :try_start_9
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "error"

    .line 195
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 196
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_28

    .line 197
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->valueOf(Ljava/lang/String;)Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    move-result-object p0

    .line 200
    invoke-virtual {p0}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->name()Ljava/lang/String;

    move-result-object v2

    .line 202
    :cond_28
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3f

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 203
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :cond_3f
    const-string v0, "details"

    .line 205
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_45} :catch_50
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_45} :catch_4e

    if-eqz p1, :cond_57

    .line 207
    :try_start_47
    invoke-virtual {p2, p1}, Lcom/google/firebase/functions/Serializer;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_4b} :catch_51
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_4b} :catch_4c

    goto :goto_57

    :catch_4c
    nop

    goto :goto_57

    :catch_4e
    move-object p1, v3

    goto :goto_57

    :catch_50
    move-object p1, v3

    .line 211
    :catch_51
    sget-object p0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->INTERNAL:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    .line 212
    invoke-virtual {p0}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->name()Ljava/lang/String;

    move-result-object v2

    .line 217
    :cond_57
    :goto_57
    sget-object p2, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->OK:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    if-ne p0, p2, :cond_5c

    return-object v3

    .line 223
    :cond_5c
    new-instance p2, Lcom/google/firebase/functions/FirebaseFunctionsException;

    invoke-direct {p2, v2, p0, p1}, Lcom/google/firebase/functions/FirebaseFunctionsException;-><init>(Ljava/lang/String;Lcom/google/firebase/functions/FirebaseFunctionsException$Code;Ljava/lang/Object;)V

    return-object p2
.end method


# virtual methods
.method public getCode()Lcom/google/firebase/functions/FirebaseFunctionsException$Code;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/google/firebase/functions/FirebaseFunctionsException;->code:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    return-object v0
.end method

.method public getDetails()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/google/firebase/functions/FirebaseFunctionsException;->details:Ljava/lang/Object;

    return-object v0
.end method
