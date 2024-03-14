.class Lcom/google/firebase/functions/HttpsCallableContext;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-functions@@19.0.2"


# instance fields
.field private final authToken:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final instanceIdToken:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/firebase/functions/HttpsCallableContext;->authToken:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/google/firebase/functions/HttpsCallableContext;->instanceIdToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/firebase/functions/HttpsCallableContext;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceIdToken()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/google/firebase/functions/HttpsCallableContext;->instanceIdToken:Ljava/lang/String;

    return-object v0
.end method
