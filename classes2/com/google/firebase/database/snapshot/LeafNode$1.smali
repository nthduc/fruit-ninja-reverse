.class synthetic Lcom/google/firebase/database/snapshot/LeafNode$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/snapshot/LeafNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 141
    invoke-static {}, Lcom/google/firebase/database/snapshot/Node$HashVersion;->values()[Lcom/google/firebase/database/snapshot/Node$HashVersion;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/firebase/database/snapshot/LeafNode$1;->$SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion:[I

    :try_start_9
    sget-object v0, Lcom/google/firebase/database/snapshot/LeafNode$1;->$SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion:[I

    sget-object v1, Lcom/google/firebase/database/snapshot/Node$HashVersion;->V1:Lcom/google/firebase/database/snapshot/Node$HashVersion;

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/Node$HashVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/google/firebase/database/snapshot/LeafNode$1;->$SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion:[I

    sget-object v1, Lcom/google/firebase/database/snapshot/Node$HashVersion;->V2:Lcom/google/firebase/database/snapshot/Node$HashVersion;

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/Node$HashVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
