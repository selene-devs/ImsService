.class Lcom/mediatek/ims/ImsService$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsService;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsService;

    .line 414
    iput-object p1, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 416
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onReceive] action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mediatek.ims.ACTION_IMS_SIMULATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v3, "registry"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$202(Lcom/mediatek/ims/ImsService;Z)Z

    .line 421
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Simulate IMS Registration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$200(Lcom/mediatek/ims/ImsService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$300(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 422
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 423
    .local v0, "phoneId":I
    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 424
    iget-object v4, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$200(Lcom/mediatek/ims/ImsService;)Z

    move-result v4

    aput v4, v3, v1

    const/16 v1, 0xf

    aput v1, v3, v2

    const/4 v1, 0x2

    aput v0, v3, v1

    move-object v1, v3

    .line 427
    .local v1, "result":[I
    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 428
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v4

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    .line 429
    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 428
    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 430
    .end local v0    # "phoneId":I
    .end local v1    # "result":[I
    .end local v3    # "ar":Landroid/os/AsyncResult;
    goto/16 :goto_4

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 431
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterWifiOffloadService()V

    goto :goto_0

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$500(Lcom/mediatek/ims/ImsService;)V

    .line 437
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$600(Lcom/mediatek/ims/ImsService;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 438
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v1

    aget v1, v1, v0

    if-ne v1, v2, :cond_2

    .line 439
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v1, "newIntent":Landroid/content/Intent;
    const-string v3, "android:phone_id"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 442
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcast IMS_SERVICE_UP for phone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 437
    .end local v1    # "newIntent":Landroid/content/Intent;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_3
    goto/16 :goto_4

    .line 445
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 446
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "simStatus":Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 448
    const/4 v1, -0x1

    const-string v2, "phone"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 450
    .local v1, "phoneId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 451
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ImsService;->access$900(Lcom/mediatek/ims/ImsService;I)V

    goto/16 :goto_3

    .line 454
    .end local v0    # "simStatus":Ljava/lang/String;
    .end local v1    # "phoneId":I
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 456
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 457
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "slot"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 458
    .local v1, "slotId":I
    if-eqz v0, :cond_a

    .line 459
    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v3

    .line 460
    .local v3, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    .line 461
    .local v4, "dataState":I
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v5

    .line 462
    .local v5, "dataNetType":I
    iget-object v6, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_SERVICE_STATE_CHANGED: slotId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", ims="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    .line 463
    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$1000(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v8

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",data="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 462
    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 464
    iget-object v6, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$1000(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    aget v6, v6, v1

    if-nez v6, :cond_a

    .line 465
    if-nez v4, :cond_8

    .line 466
    const/16 v6, 0xd

    if-eq v5, v6, :cond_7

    const/16 v6, 0x13

    if-ne v5, v6, :cond_6

    goto :goto_2

    .line 470
    :cond_6
    iget-object v6, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6, v1, v2}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;II)V

    goto :goto_4

    .line 468
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$1000(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    aget v6, v6, v1

    invoke-static {v2, v1, v6}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;II)V

    goto :goto_4

    .line 473
    :cond_8
    iget-object v6, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6, v1, v2}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;II)V

    goto :goto_4

    .line 454
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "slotId":I
    .end local v3    # "ss":Landroid/telephony/ServiceState;
    .end local v4    # "dataState":I
    .end local v5    # "dataNetType":I
    :cond_9
    :goto_3
    nop

    .line 479
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onReceive] finished action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 480
    return-void
.end method
