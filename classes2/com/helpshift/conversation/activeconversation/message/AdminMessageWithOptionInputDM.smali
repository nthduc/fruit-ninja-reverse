.class public Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;
.super Lcom/helpshift/conversation/activeconversation/message/AdminMessageDM;
.source "AdminMessageWithOptionInputDM.java"


# instance fields
.field public attachmentCount:I

.field public input:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;


# direct methods
.method private constructor <init>(Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/activeconversation/message/AdminMessageDM;-><init>(Lcom/helpshift/conversation/activeconversation/message/AdminMessageDM;)V

    .line 24
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;->deepClone()Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;

    .line 25
    iget p1, p1, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;->attachmentCount:I

    iput p1, p0, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;->attachmentCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/helpshift/conversation/activeconversation/message/Author;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;",
            ">;",
            "Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;",
            ")V"
        }
    .end annotation

    .line 18
    sget-object v7, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_TEXT_WITH_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/helpshift/conversation/activeconversation/message/AdminMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Lcom/helpshift/conversation/activeconversation/message/MessageType;)V

    .line 19
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;

    move-object v0, v7

    move-object v1, p7

    move/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;)V

    move-object v0, p0

    iput-object v7, v0, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;

    return-void
.end method


# virtual methods
.method public bridge synthetic deepClone()Lcom/helpshift/conversation/activeconversation/message/AdminMessageDM;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;->deepClone()Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;

    move-result-object v0

    return-object v0
.end method

.method public deepClone()Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;
    .registers 2

    .line 40
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;

    invoke-direct {v0, p0}, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;-><init>(Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;)V

    return-object v0
.end method

.method public bridge synthetic deepClone()Lcom/helpshift/conversation/activeconversation/message/MessageDM;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;->deepClone()Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepClone()Ljava/lang/Object;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;->deepClone()Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;

    move-result-object v0

    return-object v0
.end method

.method public merge(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 3

    .line 30
    invoke-super {p0, p1}, Lcom/helpshift/conversation/activeconversation/message/AdminMessageDM;->merge(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 31
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;

    if-eqz v0, :cond_11

    .line 32
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;

    .line 33
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;

    .line 34
    iget p1, p1, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;->attachmentCount:I

    iput p1, p0, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;->attachmentCount:I

    :cond_11
    return-void
.end method
