.class Lcom/google/firebase/storage/CancelException;
.super Ljava/io/IOException;
.source "com.google.firebase:firebase-storage@@19.1.1"


# direct methods
.method constructor <init>()V
    .registers 2

    const-string v0, "The operation was canceled."

    .line 23
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
