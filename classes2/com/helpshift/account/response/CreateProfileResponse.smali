.class public Lcom/helpshift/account/response/CreateProfileResponse;
.super Ljava/lang/Object;
.source "CreateProfileResponse.java"


# instance fields
.field public final id:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/helpshift/account/response/CreateProfileResponse;->id:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/helpshift/account/response/CreateProfileResponse;->name:Ljava/lang/String;

    return-void
.end method
