.class Lcom/google/firebase/database/FirebaseDatabase$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/FirebaseDatabase;->purgeOutstandingWrites()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/FirebaseDatabase;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/FirebaseDatabase;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/google/firebase/database/FirebaseDatabase$1;->this$0:Lcom/google/firebase/database/FirebaseDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase$1;->this$0:Lcom/google/firebase/database/FirebaseDatabase;

    # getter for: Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;
    invoke-static {v0}, Lcom/google/firebase/database/FirebaseDatabase;->access$000(Lcom/google/firebase/database/FirebaseDatabase;)Lcom/google/firebase/database/core/Repo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Repo;->purgeOutstandingWrites()V

    return-void
.end method
