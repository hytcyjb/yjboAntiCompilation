.class final Lcom/didi/im/db/IMDBDataHelper$3;
.super Ljava/lang/Object;
.source "IMDBDataHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/db/IMDBDataHelper;->insertBulkChatRecord(Ljava/util/ArrayList;Ljava/lang/String;Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listDTOChatRecord:Ljava/util/ArrayList;

.field final synthetic val$listener:Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;

.field final synthetic val$sid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$sid:Ljava/lang/String;

    iput-object p3, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listener:Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 217
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v2, cpo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "---IMDBDataHelper insertChatRecord list size:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 220
    iget-object v10, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 221
    iget-object v11, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$sid:Ljava/lang/String;

    iget-object v10, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v10}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v10

    iget v12, v10, Lcom/didi/im/model/IMChatRecord;->MID:I

    iget-object v10, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v10}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v10

    iget v10, v10, Lcom/didi/im/model/IMChatRecord;->MID:I

    invoke-static {v11, v12, v10}, Lcom/didi/im/db/IMDBDataHelper;->queryListChatRecordForVoice(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v7

    .line 224
    .local v7, listVoice:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMChatRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/didi/im/model/IMChatRecord;

    .line 225
    .local v8, record:Lcom/didi/im/model/IMChatRecord;
    iget-object v10, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    .line 226
    .local v3, dto:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    invoke-virtual {v3}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v10

    iget v10, v10, Lcom/didi/im/model/IMChatRecord;->MID:I

    iget v11, v8, Lcom/didi/im/model/IMChatRecord;->MID:I

    if-ne v10, v11, :cond_1

    .line 227
    invoke-virtual {v3}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v10

    const/4 v11, 0x1

    iput v11, v10, Lcom/didi/im/model/IMChatRecord;->voiceStatus:I

    goto :goto_0

    .line 233
    .end local v3           #dto:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #record:Lcom/didi/im/model/IMChatRecord;
    :cond_2
    iget-object v11, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$sid:Ljava/lang/String;

    iget-object v10, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v10}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v10

    iget v10, v10, Lcom/didi/im/model/IMChatRecord;->MID:I

    invoke-static {v11, v10}, Lcom/didi/im/db/IMDBDataHelper;->queryOneChatRecordMidById(Ljava/lang/String;I)Lcom/didi/im/model/IMChatRecord;

    move-result-object v0

    .line 234
    .local v0, chatRecord:Lcom/didi/im/model/IMChatRecord;
    if-eqz v0, :cond_3

    .line 235
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "---IMDBDataHelper insertChatRecord dbmid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Lcom/didi/im/model/IMChatRecord;->MID:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " servicMid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v10}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v10

    iget v10, v10, Lcom/didi/im/model/IMChatRecord;->MID:I

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " serviceLastMid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v10}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v10

    iget v10, v10, Lcom/didi/im/model/IMChatRecord;->MID:I

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " toString:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/didi/im/model/IMChatRecord;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 240
    :cond_3
    if-eqz v0, :cond_4

    iget v11, v0, Lcom/didi/im/model/IMChatRecord;->MID:I

    iget-object v10, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v10}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v10

    iget v10, v10, Lcom/didi/im/model/IMChatRecord;->MID:I

    if-lt v11, v10, :cond_4

    .line 241
    iget-object v11, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$sid:Ljava/lang/String;

    iget-object v10, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v10}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v10

    iget v12, v10, Lcom/didi/im/model/IMChatRecord;->MID:I

    iget-object v10, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v10}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v10

    iget v10, v10, Lcom/didi/im/model/IMChatRecord;->MID:I

    invoke-static {v11, v12, v10}, Lcom/didi/im/db/IMDBDataHelper;->deleteChatRecordForBlock(Ljava/lang/String;II)I

    move-result v1

    .line 245
    .local v1, cnt:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "---IMDBDataHelper insertChatRecord delecnt:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 246
    const/4 v10, 0x1

    if-ge v1, v10, :cond_4

    .line 247
    iget-object v10, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listener:Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;

    const/4 v11, 0x0

    #calls: Lcom/didi/im/db/IMDBDataHelper;->failedCallback(Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;Ljava/lang/Exception;)V
    invoke-static {v10, v11}, Lcom/didi/im/db/IMDBDataHelper;->access$000(Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;Ljava/lang/Exception;)V

    .line 273
    .end local v0           #chatRecord:Lcom/didi/im/model/IMChatRecord;
    .end local v1           #cnt:I
    .end local v7           #listVoice:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMChatRecord;>;"
    :goto_1
    return-void

    .line 253
    :cond_4
    iget-object v10, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    .line 255
    .restart local v3       #dto:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    invoke-virtual {v3}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v10

    iget-object v11, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$sid:Ljava/lang/String;

    iput-object v11, v10, Lcom/didi/im/model/IMChatRecord;->SID:Ljava/lang/String;

    .line 256
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "---IMDBDataHelper insertChatRecord record:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 257
    sget-object v10, Lcom/didi/im/db/IMDBHelper$ChatRecordColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v11

    #calls: Lcom/didi/im/db/IMDBDataHelper;->getChatRecordContentValues(Lcom/didi/im/model/IMChatRecord;)Landroid/content/ContentValues;
    invoke-static {v11}, Lcom/didi/im/db/IMDBDataHelper;->access$400(Lcom/didi/im/model/IMChatRecord;)Landroid/content/ContentValues;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 262
    .end local v3           #dto:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    :cond_5
    :try_start_0
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/didi/common/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "com.diditaxi.psnger.im"

    invoke-virtual {v10, v11, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v9

    .line 264
    .local v9, results:[Landroid/content/ContentProviderResult;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "---IMDBDataHelper insertChatRecord  ContentProviderResult[] length:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 266
    iget-object v10, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listener:Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;

    iget-object v11, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    #calls: Lcom/didi/im/db/IMDBDataHelper;->successedCallback(Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;[Landroid/content/ContentProviderResult;Ljava/util/ArrayList;)V
    invoke-static {v10, v9, v11}, Lcom/didi/im/db/IMDBDataHelper;->access$200(Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;[Landroid/content/ContentProviderResult;Ljava/util/ArrayList;)V

    .line 268
    iget-object v10, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v10}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v10

    iget-object v11, v10, Lcom/didi/im/model/IMChatRecord;->SID:Ljava/lang/String;

    iget-object v10, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listDTOChatRecord:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v10}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v10

    iget v10, v10, Lcom/didi/im/model/IMChatRecord;->MID:I

    invoke-static {v11, v10}, Lcom/didi/im/db/IMDBDataHelper;->updateImSessionMIDBySID(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 270
    .end local v9           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v4

    .line 271
    .local v4, e:Ljava/lang/Exception;
    iget-object v10, p0, Lcom/didi/im/db/IMDBDataHelper$3;->val$listener:Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;

    #calls: Lcom/didi/im/db/IMDBDataHelper;->failedCallback(Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;Ljava/lang/Exception;)V
    invoke-static {v10, v4}, Lcom/didi/im/db/IMDBDataHelper;->access$000(Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method
