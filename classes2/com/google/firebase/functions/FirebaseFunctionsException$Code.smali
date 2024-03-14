.class public final enum Lcom/google/firebase/functions/FirebaseFunctionsException$Code;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-functions@@19.0.2"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/functions/FirebaseFunctionsException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/functions/FirebaseFunctionsException$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

.field public static final enum ABORTED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

.field public static final enum ALREADY_EXISTS:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

.field public static final enum CANCELLED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

.field public static final enum DATA_LOSS:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

.field public static final enum DEADLINE_EXCEEDED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

.field public static final enum FAILED_PRECONDITION:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

.field public static final enum INTERNAL:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

.field public static final enum INVALID_ARGUMENT:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

.field public static final enum NOT_FOUND:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

.field public static final enum OK:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

.field public static final enum OUT_OF_RANGE:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

.field public static final enum PERMISSION_DENIED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

.field public static final enum RESOURCE_EXHAUSTED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

.field private static final STATUS_LIST:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/firebase/functions/FirebaseFunctionsException$Code;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum UNAUTHENTICATED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

.field public static final enum UNAVAILABLE:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

.field public static final enum UNIMPLEMENTED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

.field public static final enum UNKNOWN:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 40
    new-instance v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->OK:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    .line 43
    new-instance v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const/4 v2, 0x1

    const-string v3, "CANCELLED"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->CANCELLED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    .line 46
    new-instance v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->UNKNOWN:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    .line 53
    new-instance v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const/4 v4, 0x3

    const-string v5, "INVALID_ARGUMENT"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->INVALID_ARGUMENT:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    .line 61
    new-instance v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const/4 v5, 0x4

    const-string v6, "DEADLINE_EXCEEDED"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->DEADLINE_EXCEEDED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    .line 64
    new-instance v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const/4 v6, 0x5

    const-string v7, "NOT_FOUND"

    invoke-direct {v0, v7, v6, v6}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->NOT_FOUND:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    .line 67
    new-instance v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const/4 v7, 0x6

    const-string v8, "ALREADY_EXISTS"

    invoke-direct {v0, v8, v7, v7}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->ALREADY_EXISTS:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    .line 70
    new-instance v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const/4 v8, 0x7

    const-string v9, "PERMISSION_DENIED"

    invoke-direct {v0, v9, v8, v8}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->PERMISSION_DENIED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    .line 76
    new-instance v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const/16 v9, 0x8

    const-string v10, "RESOURCE_EXHAUSTED"

    invoke-direct {v0, v10, v9, v9}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->RESOURCE_EXHAUSTED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    .line 82
    new-instance v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const/16 v10, 0x9

    const-string v11, "FAILED_PRECONDITION"

    invoke-direct {v0, v11, v10, v10}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->FAILED_PRECONDITION:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    .line 87
    new-instance v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const/16 v11, 0xa

    const-string v12, "ABORTED"

    invoke-direct {v0, v12, v11, v11}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->ABORTED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    .line 90
    new-instance v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const/16 v12, 0xb

    const-string v13, "OUT_OF_RANGE"

    invoke-direct {v0, v13, v12, v12}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->OUT_OF_RANGE:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    .line 93
    new-instance v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const/16 v13, 0xc

    const-string v14, "UNIMPLEMENTED"

    invoke-direct {v0, v14, v13, v13}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->UNIMPLEMENTED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    .line 99
    new-instance v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const/16 v14, 0xd

    const-string v15, "INTERNAL"

    invoke-direct {v0, v15, v14, v14}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->INTERNAL:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    .line 105
    new-instance v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const/16 v15, 0xe

    const-string v14, "UNAVAILABLE"

    invoke-direct {v0, v14, v15, v15}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->UNAVAILABLE:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    .line 108
    new-instance v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const-string v14, "DATA_LOSS"

    const/16 v15, 0xf

    const/16 v13, 0xf

    invoke-direct {v0, v14, v15, v13}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->DATA_LOSS:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    .line 111
    new-instance v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const-string v13, "UNAUTHENTICATED"

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-direct {v0, v13, v14, v15}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->UNAUTHENTICATED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const/16 v0, 0x11

    .line 35
    new-array v0, v0, [Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    sget-object v13, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->OK:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    aput-object v13, v0, v1

    sget-object v1, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->CANCELLED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->UNKNOWN:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->INVALID_ARGUMENT:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->DEADLINE_EXCEEDED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->NOT_FOUND:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->ALREADY_EXISTS:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->PERMISSION_DENIED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->RESOURCE_EXHAUSTED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->FAILED_PRECONDITION:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->ABORTED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->OUT_OF_RANGE:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->UNIMPLEMENTED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->INTERNAL:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->UNAVAILABLE:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->DATA_LOSS:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->UNAUTHENTICATED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->$VALUES:[Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    .line 120
    invoke-static {}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->buildStatusList()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->STATUS_LIST:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput p3, p0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->value:I

    return-void
.end method

.method private static buildStatusList()Landroid/util/SparseArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/firebase/functions/FirebaseFunctionsException$Code;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 124
    invoke-static {}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->values()[Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_48

    aget-object v4, v1, v3

    .line 125
    invoke-virtual {v4}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->ordinal()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    if-nez v5, :cond_25

    .line 130
    invoke-virtual {v4}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->ordinal()I

    move-result v5

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 127
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code value duplication between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v4}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    return-object v0
.end method

.method static fromHttpStatus(I)Lcom/google/firebase/functions/FirebaseFunctionsException$Code;
    .registers 2

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_4b

    const/16 v0, 0x199

    if-eq p0, v0, :cond_48

    const/16 v0, 0x1ad

    if-eq p0, v0, :cond_45

    const/16 v0, 0x190

    if-eq p0, v0, :cond_42

    const/16 v0, 0x191

    if-eq p0, v0, :cond_3f

    const/16 v0, 0x193

    if-eq p0, v0, :cond_3c

    const/16 v0, 0x194

    if-eq p0, v0, :cond_39

    const/16 v0, 0x1f7

    if-eq p0, v0, :cond_36

    const/16 v0, 0x1f8

    if-eq p0, v0, :cond_33

    packed-switch p0, :pswitch_data_4e

    .line 174
    sget-object p0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->UNKNOWN:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    return-object p0

    .line 168
    :pswitch_2a
    sget-object p0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->UNIMPLEMENTED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    return-object p0

    .line 166
    :pswitch_2d
    sget-object p0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->INTERNAL:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    return-object p0

    .line 164
    :pswitch_30
    sget-object p0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->CANCELLED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    return-object p0

    .line 172
    :cond_33
    sget-object p0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->DEADLINE_EXCEEDED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    return-object p0

    .line 170
    :cond_36
    sget-object p0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->UNAVAILABLE:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    return-object p0

    .line 158
    :cond_39
    sget-object p0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->NOT_FOUND:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    return-object p0

    .line 156
    :cond_3c
    sget-object p0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->PERMISSION_DENIED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    return-object p0

    .line 154
    :cond_3f
    sget-object p0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->UNAUTHENTICATED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    return-object p0

    .line 152
    :cond_42
    sget-object p0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->INVALID_ARGUMENT:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    return-object p0

    .line 162
    :cond_45
    sget-object p0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->RESOURCE_EXHAUSTED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    return-object p0

    .line 160
    :cond_48
    sget-object p0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->ABORTED:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    return-object p0

    .line 150
    :cond_4b
    sget-object p0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->OK:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    return-object p0

    :pswitch_data_4e
    .packed-switch 0x1f3
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
    .end packed-switch
.end method

.method static fromValue(I)Lcom/google/firebase/functions/FirebaseFunctionsException$Code;
    .registers 3

    .line 136
    sget-object v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->STATUS_LIST:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->UNKNOWN:Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/functions/FirebaseFunctionsException$Code;
    .registers 2

    .line 35
    const-class v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/functions/FirebaseFunctionsException$Code;
    .registers 1

    .line 35
    sget-object v0, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->$VALUES:[Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    invoke-virtual {v0}, [Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    return-object v0
.end method
