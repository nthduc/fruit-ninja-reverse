.class Lcom/facebook/FacebookException$1;
.super Ljava/lang/Object;
.source "FacebookException.java"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/FacebookException;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/FacebookException;Ljava/lang/String;)V
    .registers 3

    .line 47
    iput-object p1, p0, Lcom/facebook/FacebookException$1;->this$0:Lcom/facebook/FacebookException;

    iput-object p2, p0, Lcom/facebook/FacebookException$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Z)V
    .registers 2

    if-eqz p1, :cond_7

    .line 52
    :try_start_2
    iget-object p1, p0, Lcom/facebook/FacebookException$1;->val$message:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;->save(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    return-void
.end method
