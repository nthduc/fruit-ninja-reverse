.class Lcom/google/firebase/database/MutableData$2;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/MutableData;->getChildren()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/google/firebase/database/MutableData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/MutableData;

.field final synthetic val$iter:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/MutableData;Ljava/util/Iterator;)V
    .registers 3

    .line 130
    iput-object p1, p0, Lcom/google/firebase/database/MutableData$2;->this$0:Lcom/google/firebase/database/MutableData;

    iput-object p2, p0, Lcom/google/firebase/database/MutableData$2;->val$iter:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/firebase/database/MutableData;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Lcom/google/firebase/database/MutableData$2$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/MutableData$2$1;-><init>(Lcom/google/firebase/database/MutableData$2;)V

    return-object v0
.end method
