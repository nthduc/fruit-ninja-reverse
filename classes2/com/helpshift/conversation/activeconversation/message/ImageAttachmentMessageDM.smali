.class public abstract Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;
.super Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;
.source "ImageAttachmentMessageDM.java"


# instance fields
.field public thumbnailFilePath:Ljava/lang/String;

.field public thumbnailUrl:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;-><init>(Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;)V

    .line 18
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;->thumbnailUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;->thumbnailUrl:Ljava/lang/String;

    .line 19
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;->thumbnailFilePath:Ljava/lang/String;

    iput-object p1, p0, Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;->thumbnailFilePath:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLcom/helpshift/conversation/activeconversation/message/MessageType;)V
    .registers 27

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p10

    move-object/from16 v7, p9

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, p13

    .line 11
    invoke-direct/range {v0 .. v12}, Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/helpshift/conversation/activeconversation/message/MessageType;)V

    move-object/from16 v1, p8

    .line 13
    iput-object v1, v0, Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public merge(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 3

    .line 24
    invoke-super {p0, p1}, Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;->merge(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 25
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;

    if-eqz v0, :cond_d

    .line 26
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;

    .line 27
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;->thumbnailUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;->thumbnailUrl:Ljava/lang/String;

    :cond_d
    return-void
.end method
